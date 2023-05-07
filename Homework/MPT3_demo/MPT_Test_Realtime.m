%% This script is used to test the MPT toolbox Real-time Part
clc
clear all

%% MPC by Online Optimization
% With the help of LCP solver, it is possible to perform online optimization to solve MPC problems. The LCP solver is capable of solving linear, quadratic, and linear-complementarity problems. It has been implemented in C-programming language and features tricks for improving robustness. The demonstration of applying online MPC can be inspected in
mpt_demo_deployment_onlineMPC

%% MPC by Evaluation of Explicit Solution
% If you want your MPC controller to run really fast, then you should opt for implementation using explicit MPC. In the following demo it is shown how to formulate MPC control problem and how to obtain an explicit solution. The control problem is the same as in the online MPC example, but here an explicit solution is generated and exported to C-programing language. The explicit solution is then used online for fast evaluation in the compiled code.
mpt_demo_deployment_explicitMPC