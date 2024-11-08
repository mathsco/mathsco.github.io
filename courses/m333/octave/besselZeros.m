function alphas = besselZeros(N)
%function alphas = besselZeros(N)
%
% Returns a matrix alpha, whose {mn}th entry is the nth nonnegative
% zero of the (m+1)st order Bessel function of the first kind.

 alphas = zeros(N+1,N);
 for mm = 0:N
  if (mm == 0), nn = 1; else nn = 2; end
  done = 0;
  count = 0;
  while (count < N)
   zeroFound = 0;
   while !(zeroFound)
    try
     alphas(mm+1,count+1) = fzero(@(x) besselj(mm, x), [(nn-1) nn]*pi);
     zeroFound = 1;
    catch
     nn += 1;
    end
   end
   nn += 1;
   count += 1;
  end
 end
end

