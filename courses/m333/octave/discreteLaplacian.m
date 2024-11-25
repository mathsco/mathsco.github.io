function L = discreteLaplacian(nr, nc)
  v = ones(nr,1);
  w = ones(nc,1);
  A = spdiags([v v -4*v v v], [1-nr -1 0 1 nr-1], nr, nr);
  B = speye(nr);
  maindiagtemplate = speye(nc);
  offdiagtemplate = spdiags([w w w w], [1-nc -1 1 nc-1], nc, nc);
  L = kron(maindiagtemplate, A) + kron(offdiagtemplate, B);
end
