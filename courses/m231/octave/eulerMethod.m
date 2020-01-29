function approx_y = eulerMethod(f, xvals, y0)
% function approx_y = eulerMethod(f, xvals, y0)
%
%  implements scalar version of Euler's (numerical) method for
%  1st-order ODEs, giving approximate points on solution curve
%  at those inputs specified in vector <xvals>.  Euler's method
%  usually assumes uniform stepsize, but the steps in this algorithm
%  match the gaps in consecutive entries of <xvals>, whether or not
%  those gaps are of equal length.
%
%   f is an @ function, or an inline function, or the name of
%   an m-file with quotes.
%
%   xvals is a vector of inputs at which approximate solution points
%   are generated.
%
%   y0 is the (initial) value of the desired solution curve
%   corresponding to the input xvals(1).
%
%   return value is a vector of approximate values on the solution
%   curve corresponding to the inputs found in <xvals>.
%
% Example: y' = 1 + xy^2,  subject to y(-2) = -0.8
%   Determine approximate solution values in interval [-2, 2], stepsize=0.1
%
%   f = inline('1 + x*y^2', 'x', 'y')
%   xvals = -2:.1:2;
%   approx_yvals = eulerMethod(f, xvals, -.8)
%   plot(xvals, approx_yvals)

 approx_y = zeros(size(xvals));
 approx_y(1) = y0;
 for jj = 2:length(xvals)
  step = xvals(jj) - xvals(jj - 1);
  approx_y(jj) = approx_y(jj - 1) + step * f(xvals(jj-1), approx_y(jj-1));
 end
end

