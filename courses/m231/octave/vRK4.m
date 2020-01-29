function approx_y = vRK4(f, xvals, y0)
% function approx_y = eulerMethod(f, xvals, y0)
%
%  implements vector version of 4th-order Runge-Kutta (numerical) method
%  for 1st-order ODEs, giving approximate dependent variable values at
%  those inputs specified in vector <xvals>.  The RK4 method usually
%  assumes uniform stepsize, but the steps in this algorithm match the
%  gaps in consecutive entries of <xvals>, whether or not those gaps are
%  of equal length.
%
%   f is an @ function, or an inline function, or the name of
%   an m-file with quotes.
%
%   xvals is a vector of inputs at which approximate solution points
%   are generated.
%
%   y0 is the (initial) vector, the value of the dependent vars
%   corresponding to the input xvals(1).
%
%   return value is a matrix of approximate values of the dependent vars,
%   its jth column corresponding to the jth input found in <xvals>.
%
% Example: two-body problem
%            x'' = -GMx/(x^2+y^2)^(3/2)
%            y'' = -GMy/(x^2+y^2)^(3/2)
%            x(0) = 1, x'(0) = 0, y(0) = 0, y'(0) = .75
%
%   Determine approximate solution values in interval [-2, 2], stepsize=0.1
%
%   f = @(t,z) [z(2);-z(1)/(z(1)^2+z(3)^2)^1.5;z(4);-z(3)/(z(1)^2+z(3)^2)^1.5];
%   tvals = 0:.1:6
%   zvals = vRK4(f, tvals, [1;0;0;.75])
%   plot(zvals(1,:), zvals(3,:))

 approx_y = zeros(length(y0),length(xvals));
 approx_y(:,1) = y0;
 for jj = 2:length(xvals)
  step = xvals(jj) - xvals(jj - 1);
  kn1 = f(xvals(jj-1), approx_y(:,jj-1));
  kn2 = f(xvals(jj-1)+step/2, approx_y(:,jj-1)+step/2*kn1);
  kn3 = f(xvals(jj-1)+step/2, approx_y(:,jj-1)+step/2*kn2);
  kn4 = f(xvals(jj), approx_y(:,jj-1)+step*kn3);
  approx_y(:,jj) = approx_y(:,jj-1) + step/6 * (kn1+2*kn2+2*kn3+kn4);
 end
end

