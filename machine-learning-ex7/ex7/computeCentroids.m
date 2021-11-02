function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

first_centroid = 0;
first = 0;
second_centroid = 0;
second = 0;
third_centroid = 0;
third = 0;

for i = 1:length(idx),
  if idx(i) == 1,
    first_centroid += X(i,:);
    first++;
  elseif idx(i) == 2,
    second_centroid += X(i,:);
    second++;
  else
    third_centroid += X(i,:);
    third++;
  endif
endfor

centroids(1,:) = first_centroid .* (1/first);
centroids(2,:) = second_centroid .* (1/second);
centroids(3,:) = third_centroid .* (1/third);

% =============================================================


end

