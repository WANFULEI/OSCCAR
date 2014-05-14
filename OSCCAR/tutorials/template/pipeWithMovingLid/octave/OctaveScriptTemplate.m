% =========================================================================== %
% 
% Script:  ReynoldsNumber.m
% Code:    Octave 3.8.1
% Author:  Gijsbert Wierink
%          PFM
% Date:    19.03.2014
%
%
% Description:
% Calculate the Reynolds number for pipe flow.
% 
% Nomenclature:
%   d:         Pipe diameter (m)
%   U:         Mean stream velocity (m/s)
%   rho:       Fluid density (kg/m3)
%   mu:        Fluid dynamic viscosity (Pa.s = kg/m/s)
%
% =========================================================================== %

% Preamble: clean up
clear all;
close all;
clc;

% --------------------------------------------------------------------------- %
%   Input section
% --------------------------------------------------------------------------- %

d      = 0.1;
U      = 20;
mu     = 1e-3;
rho    = 1000;

% --------------------------------------------------------------------------- %
%   Calculation section
% --------------------------------------------------------------------------- %

% Calculate the Reynolds number
Re = rho*U*d/mu;

% Print the result
printf("Re = %.2e\n", Re)

% ... or simply use:
%disp(Re)

% --------------------------------------------------------------------------- %
%   Plot section
% --------------------------------------------------------------------------- %


% =========================================================================== %
%   End of file
% =========================================================================== %
