function alteredMatrix = rowswap(inputMatrix, rnum1, rnum2)
 alteredMatrix = inputMatrix;
 alteredMatrix(rnum1, :) = inputMatrix(rnum2, :);
 alteredMatrix(rnum2, :) = inputMatrix(rnum1, :);
end

