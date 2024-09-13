function coeffs = sineCoeffs(f, N, ell = pi)
% function coeffs = sineCoeffs(f, N, ell)
%
% Computes the Fourier sine coefficients b_1, ..., b_N of <f>
% according to the formula
%
%   b_j = (2 / ell) * int_0^ell f(x) * sin(j*pi*x / ell) dx
%
% The value of <ell> defaults to pi.

  coeffs = zeros(N,1);
  for jj=1:N
    coeffs(jj) = quad(@(x) f(x).*sin(jj*pi*x/ell), 0, ell) * 2 / ell;
  end
end

