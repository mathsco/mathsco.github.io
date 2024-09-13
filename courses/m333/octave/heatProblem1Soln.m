function y = heatProblem1Soln(f, N, alpha, xvals, tval=0, ell=pi)
% solution to 1D Dirichlet heat problem on interval [0,ell]

 b = sineCoeffs(f, N, ell);
 y = zeros(size(xvals));    % initialize y to be same size as xvals, all zeros

 % Standard trick for summations:
 %  Each step through the FOR loop adds one more term to sum
 %  Old value of sum is referenced on right side of assignment.
 for jj = 1:N
  y = y + b(jj) * exp(-(jj*pi*alpha/ell)^2 * tval) * sin(jj*pi*xvals / ell);
 end
end

