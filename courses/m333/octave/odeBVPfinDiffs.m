alph = 1;
bet = -1;
N = 20;
dx = pi/(N + 1);

%A = diag(ones(N-1,1), -1) + diag(ones(N-1,1), 1) + (-2 + dx^2)*diag(ones(N,1));
v = ones(N,1);
A = spdiags([v (-2 + dx^2)*v v], [-1 0 1], N, N);

u = A \ [-alph; zeros(N-2, 1); -bet];
plot(pi*(0:N+1)'/(N+1), [alph; u; bet])
set(gca, 'FontSize', 20)
title('Numeric soln with N = 20')

