function normFrob = dividedH_HtFrob(A, hankelWindowSize)
% m = hankelWindowSize;

symMatrix = dividedH_Ht(A, hankelWindowSize);
w = [ones(1, 2 * hankelWindowSize) 2 * ones(1, length(2*hankelWindowSize+1 : size(symMatrix, 1)))];
normFrob = sqrt(w * (symMatrix.^2));