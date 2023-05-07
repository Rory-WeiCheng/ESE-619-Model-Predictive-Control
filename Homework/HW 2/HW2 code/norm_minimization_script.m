%% This is the Matlab Script for ESE 619 HW2 Ex4
clear all
clc
% randomly generated matrices
% use this random seed if you want to reproduce my result
rng(0) 
A = rand(5,3);
b = rand(5,1);
[N,n] = size(A);

%% 1-norm minimization
% The formulation refers to Ex3
% optimization variable is to stack x and t up, denote as y
F = [A,-eye(N);-A,-eye(N)];
g = [b;-b];
c = [zeros(n,1);ones(N,1)];
y = linprog(c,F,g);
x = y(1:n);
t = y(n+1:N+n);

% use yalmip to verify the solution
x_sym = sdpvar(n,1);
Objective_1norm = pnorm(A*x_sym-b,1);
Cons = [];
optimize(Cons,Objective_1norm);
solution = value(x_sym);
Flag = (norm(solution-x)<1e-10)

%% infinity-norm minimization
% The formulation refers to Ex3
% optimization variable is to stack x and t up, denote as y
F_inf = [A,-ones(N,1);-A,-ones(N,1)];
g_inf = [b;-b];
c_inf = [zeros(n,1);1];
y_inf = linprog(c_inf,F_inf,g_inf);
x_inf = y_inf(1:n);
t_inf = y_inf(n+1);

% use yalmip to verify the solution
x_sym_inf = sdpvar(n,1);
Objective_inf = pnorm(A*x_sym_inf-b,inf);
Cons = [];
optimize(Cons,Objective_inf);
solution_inf = value(x_sym_inf);
Flag_inf = (norm(solution_inf - x_inf)<1e-10)