f = @(x) (4*x-3).*(x>.75 & x<1) + (5-4*x).*(1<x & x<1.25) ...
            + (.5-8*(x-2.15).^2).*(1.9<x & x<2.4);
g = @(x) zeros(size(x));
waveSp = 1;
ell = pi;
N = 100;


function [cosCoeffs, sinCoeffs] = seriesCoeffs(f, g, N, ell=pi, waveSp=1)
% function [cosCoeffs, sinCoeffs] = bdd1DWaveEqnCoeffs()
 cosCoeffs = zeros(N,1);
 sinCoeffs = zeros(N,1);
 for jj = 1:N
  cosCoeffs(jj) = quad(@(x) f(x).*sin(jj*pi*x / ell), 0, ell);
  sinCoeffs(jj) = quad(@(x) g(x).*sin(jj*pi*x / ell), 0, ell);
 end
 cosCoeffs = 2/ell * cosCoeffs;
 sinCoeffs = 2/(pi*waveSp) * sinCoeffs ./ ([1:N]');
end


xs = linspace(0,pi,200);
[As, Bs] = seriesCoeffs(f, g, N, ell, waveSp);
for t = 0:.02:2;
  uVals = zeros(size(xs));
  for nn = 1:N
    % You modify the next line
    uVals +=    % increment uVals with each ensuing term in the solution
  end

  plot(xs, uVals, 'b-')
  axis([0 3.2 -1.5 1.5])
  pause(0.01)
end

