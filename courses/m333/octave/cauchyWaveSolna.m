
xs = -10:.01:10;

for t=0:.2:10
  u_at_t = (exp(-(xs-t).^2) + exp(-(xs+t).^2)) / 2;
  plot(xs, u_at_t)
  axis([-10 10 0 1])
  pause(0.1)
end
