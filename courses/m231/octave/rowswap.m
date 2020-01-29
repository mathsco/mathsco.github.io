function outmat = rowswap(inmat, row1, row2)
% function newmat = rowswap(inmat, row1, row2)
%
% Function mimicks the swaprow command on TI 83/84 series calculators.

 outmat = inmat;
 outmat(row2, :) = inmat(row1, :);
 outmat(row1, :) = inmat(row2, :);
end
