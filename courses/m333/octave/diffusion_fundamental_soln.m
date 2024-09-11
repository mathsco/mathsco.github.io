mu = 5;
D = 1;
u = @(x,t) exp(-(x-mu).^2./(4*D*t))./sqrt(4*pi*D*t)

xmin = mu-5*D
xmax = mu+5*D
xs = xmin:D/10:xmax;
ts = [.001:.001:.01 .01:.01:.1 .1:.1:1 1:10];

for t = ts
  plot(xs, u(xs,t), "linewidth", 1)
  axis([xmin xmax 0 10])
  drawnow;
  pause(1/20);
end

