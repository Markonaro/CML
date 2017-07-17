function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

% theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------

t1 = transpose(X)*y;
t2 = transpose(X)*X;
disp(size(t1));
disp(size(t2));
theta = t1/t2;

% -------------------------------------------------------------


% ============================================================

end
