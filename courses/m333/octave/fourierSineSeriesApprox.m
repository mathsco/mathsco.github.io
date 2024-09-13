function y = fourierSineSeriesApprox(f, N, xvals, ell=pi)
% function y = fourierSineSeriesApprox(f, N, xvals, ell=pi)
% 
% Evaluates at xvals the truncated Fourier sine series on [0, ell]
%
% Inputs:
%   f is the function whose approx. Fourier sine series on [0, ell] is computed
%   ell is the right endpoint of the interval
%   N is the number of Fourier sine series terms to use in the computation
%   xvals are the inputs at which the Fourier sine series approx. is evaluated

 b = sineCoeffs(f, N, ell);
 y = zeros(size(xvals));    % initialize y to be same size as xvals, all zeros

 % Standard trick for summations:
 %  Each step through the FOR loop adds one more term to sum
 %  Old value of sum is referenced on right side of assignment.
 for jj = 1:N
  y = y + b(jj) * sin(jj*pi*xvals / ell);
 end
end

