%% This script is used to test the MPT toolbox Control Part
clear all
clc

%% Representation of linear-time invariant (LTI) dynamic systems
mpt_demo_lti1

%% Modeling and simulation of piecewise affine (PWA) systems.
mpt_demo_pwa1

%% Demos on Model Predictive Control
% Attaching a finite horizon MPC controller to LTI system.
mpt_demo_lti2
% Closed loop simulation with MPC controller
mpt_demo_lti3

%% Design of explicit MPC
mpt_demo_lti4

%% Modification of MPC setup by proving a terminal penalty and terminal set constraints.
mpt_demo_lti5