# Principal Component Analysis via Singular Value Decomposition

pcaSVD.m performs a principal component analysis on a given a dataset.
The outputs are scores, PC, and Var. It is called as follows:

	[scores,PC,Var] = pcaSVD(data)

-data is an mxn matrix with m samples and n variables

-scores are the principal component scores

-PC are the principal components

-Var is a vector of variances

I have included the iris dataset to be used as input.