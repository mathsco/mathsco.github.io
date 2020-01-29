function outmat = mrow(scalar, inmat, rownum)
% function outmat = mrow(scalar, inmat, rownum)
%
% I'm not completely sure whether the syntax here matches that
% for the *row option on a TI-83/84.  This function leaves the
% input matrix mostly intact, but rescales row <rownum> by
% the amount in <scalar>.

 outmat = inmat;
 outmat(rownum, :) = scalar * outmat(rownum, :);
end
