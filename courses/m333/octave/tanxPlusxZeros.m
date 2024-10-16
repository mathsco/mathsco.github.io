function z = tanxPlusxZeros(n)
% function z = tanPlusxZeros(n)
%
%   Returns the first n positive zeros of the function
%       tan(x) + x

  startSet = [2.02876; 4.91318; 7.97867; 11.08554; 14.20744; ...
    17.33638; 20.46917; 23.60428; 26.74092];  % from Abramowitz/Stegun, p.224

  if (n >= 9)
    % Expect most zeros of g to be just to the right of asymptotes of tan(x)
    x0 = (2*[1:n]'-1)*pi/2+.05;
    x0(1:9) = startSet;
  else
    x0 = startSet(1:n);
  end

  z = [];
  for jj = 1:n
    z = [z; fsolve(@(x) x + tan(x), x0(jj))];
  end
end

