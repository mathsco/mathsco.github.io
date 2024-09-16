% Matlab code for Example 2 in huang_numerical_pdes.pdf
% Written by HPH 
% Modified by TLS, Sept. 21, 2009, for MATH 333
%
% Now meant to solve transport equation
%    u_t + c u_x = 0,   x in \mathR, t > 0
%    u(0, x) = specified "spike" function
% ---------------- 
% Define and initialize the variables 
c = 1;
dt = 0.2
dx = 0.2
nsteps = 10;

beta = c*dt / dx;

for j = 1:3*nsteps
  xi(j) = j; 
  for i = 1:nsteps
    uij(i,j) = 0; 
  end 
end 
% 
% The initial condition
% 
uij(1, round(3*nsteps/2)) = 1; 
% 
% integration to later t
% 
for i = 1:nsteps - 1
  for j = 2:3*nsteps - 1;
    uij(i+1,j) = beta*uij(i,j-1) + (1 - beta) * uij(i,j);
  end 
end 

% the plots for all the time steps
idxstart = 0
while (idxstart < nsteps)
  plot(xi, zeros(size(xi)), xi, uij(idxstart + 1, :))
  axis([0 30 -1 1])
  idxstart += 1;
  pause
end 

