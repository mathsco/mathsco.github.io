f = @(x) (1 - abs(x)).*(abs(x)<1)
a = 0;   % offset for peak of spike function
F = @(x) f(x-a);
b = 0;   % offset for peak of Gaussian function
G = @(x) exp(-(x-b).^2);
c = 3    % wave speed
u = @(x,t) F(x-c*t) + G(x+c*t)

xmin = -10;
xmax = 10;
xs = xmin:.01:xmax;
ts = 0:.1:5;

for t = ts
  plot(xs, u(xs,t), "linewidth", 1)
  axis([xmin xmax 0 2])
  drawnow;
  pause(1/20);
end

