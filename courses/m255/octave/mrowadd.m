function alteredMatrix = mrowadd(k, inputMatrix, rnum1, rnum2)
 alteredMatrix = inputMatrix;
 alteredMatrix(rnum2, :) += k*inputMatrix(rnum1, :);
end

