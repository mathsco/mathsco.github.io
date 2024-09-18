alph = 1;
bet = -1;
N = 50;
xs = linspace(0, pi, N);
dx = xs(2)-xs(1);

A = diag([ones(N-2,1); 0], -1);
A += diag([1; (dx^2-2)*ones(N-2,1); 1]);
A += diag([0; ones(N-2,1)], 1);

b = [alph; zeros(N-2, 1); bet];    
u = A \ b;      %  solves the matrix equation Au = b for u
plot(xs, u, 'k.')
set(gca, 'FontSize', 20)
title('Numeric soln with N = 20')

