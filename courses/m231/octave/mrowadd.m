function newmat = mrowadd(scalar, oldmat, rowToRescale, rowToAddTo)
% function newmat = mrowadd(scalar, oldmat, rowToRescale, rowToAddTo)
%
% Function is intended to mimick the *row+ matrix operation on
% a TI 83/84 series calculator.

 newmat = oldmat;
 newmat(rowToAddTo,:) = oldmat(rowToAddTo,:) + scalar*oldmat(rowToRescale,:);
end

