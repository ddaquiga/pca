	%	pcaSVD:
	%		performs the principal component analysis on a data set
	%		via singular value decomposition
	%
	%	input:
	%		data-
	%			MxN matrix containing M samples and N variables
	%	output:
	%		Scores-
	%			MxN matrix of projected data
	%		PC-
	%			MxM matrix where the k'th column vector is the k'th principal component
	%		Var-
	%			N-vector of variances
	%	usage:
	%		[scores,PC,Var] = pcaSVD(data)

function [scores,PC,Var] = pcaSVD(data)

[M,N] = size(data);
mn = mean(data,2);
centered = data - repmat(mn,1,N);
Y = centered' / sqrt(N-1);
[U,S,scores] = svd(Y);
scores = scores(:,1:N);
S = diag(S);
Var = S .* S;
PC = (scores' * centered);
