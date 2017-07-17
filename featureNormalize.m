function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
[~,n] = size(X);
mu = zeros(1, n);
sigma = zeros(1, n);

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

for i = 1:n
    % Subtract the mean value of each feature from the dataset.
    mu(1,i) = mean(X_norm(:,i));
    X_norm(:,i) = X_norm(:,i)-mu(1,i);
    
    % After subtracting the mean, additionally scale (divide) the feature
    % values by their respective "standard deviations."
    sigma(1,i) = std(X_norm(:,i));
    X_norm(:,i) = X_norm(:,i)/sigma(1,i);
end

fprintf('Array of mu values:\n');
fprintf(' %.2f \n', mu);
fprintf('\n');

fprintf('Array of sigma values:\n');
fprintf(' %.2f \n', sigma);
fprintf('\n');

% ============================================================

end
