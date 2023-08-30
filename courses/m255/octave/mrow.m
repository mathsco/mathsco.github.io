function alteredMatrix = mrow(k, inputMatrix, rnum)
 alteredMatrix = inputMatrix;
 alteredMatrix(rnum, :) = k*inputMatrix(rnum, :);
end

