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

a = zeros(size(X));
b = zeros(size(X));
c = zeros(size(X));

for i = 1:size(idx,1)
%sum all a/b/c = a+x if idx(i)=1/2/3 
%divide by  number of 1's 2's 3's
     if idx(i)==1
         a(i,:) = X(i,:);
     elseif idx(i)==2
             b(i,:) = X(i,:); 
     elseif idx(i)==3     
                 c(i,:) = X(i,:);
     end

     centroids(1,:) = sum(a)/sum(idx==1);
     centroids(2,:) = sum(b)/sum(idx==2);
     centroids(3,:) = sum(c)/sum(idx==3);
end        
% =============================================================


end

