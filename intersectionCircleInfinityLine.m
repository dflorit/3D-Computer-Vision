%CAP6419 - 3D Computer Vision, Assignment 1 
%Author: Daniela Florit

%Question:
% Write a Matlab function that would allow the user to input random values for the parameters 
% a = c, d, e, and f (with b assumed equal to zero), and would output the intersection points 
% of the circle C with the line at infinity l ~ [0 0 1]^T .
%

function intersectionCircleInfinityLine()
clear
clc

%Ask the user for values for a, d,e, and f
a = input('Enter a value for a: ');
d = input('Enter a value for d: ');
e = input('Enter a value for e: ');
f = input('Enter a value for f: ');

% Set up matrix C, b is assumed to be 0 and c is equal to a
C = [a 0 d; 0 a e; d e f];

%m1 and m2 are points on the line at infinity, so they are any points at
%infinity.
m1 = [10 20 0];
m2 = [30 40 0];


%Set up the coefficients of the quadratic equation, to be able to find its
%roots
a1 = dot(mtimes(m2, C), m2);
b1 = 2*dot(mtimes(m2, C), m1);
c1 = dot(mtimes(m1, C), m1);

%Find lambda1 and lamda2, which are the roots of this polynomial
lambda = roots([a1 b1 c1]);

%points 1 and two are found by plugging in lambda1 and lambda2 in the point
%formula:
intersection1 = m1 + m2*lambda(1:1);
intersection2 = m1 + m2*lambda(2:2);
clc
disp(['The two points where the circle intersects the line at infinity are: '])
intersections = [intersection1; intersection2]
end
