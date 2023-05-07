%% This script is used to test the MPT toolbox Computational Geometry Part
clear all
clc

%% Constructing polyhedral sets and their properties
% The following demo shows how to construct basic polyhedral set Polyhedron and how to extract some properties of the set.
mpt_demo_sets1

%% Constructing general convex sets and their properties
% This demo introduces the concept of a general convex set that is referred to as YSet because it is imported from Yalmip.
mpt_demo_sets2

%% Operations with polyhedral sets
% The following demo is devoted to a set algebra and highlights some of the new features present in MPT3.
mpt_demo_sets3

%% Construction of unions
% This demo shows how to construct unions of sets and how to access some properties of the union.
mpt_demo_unions1

%% Operations with unions of polyhedra
% Demonstration of set algebra with unions of polyhedra in the same dimension.
mpt_demo_unions2

%% Construction of functions and functions over sets
% The demo shows how to construct Function objects and represent functions defined over polyhedra
mpt_demo_functions1
%and over unions of polyhedra (i.e. to get piecewise functions).
mpt_demo_functions2