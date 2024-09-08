t = 0:0.001:1;
s = length(t);

clf;
rows = 4;
columns = 2;
data = zeros(rows*columns, s);
data(1,:) = sin(2*pi*5*t);
data(2,:) = sin(2*pi*5*t) + sin(2*pi*10*t);
data(3,:) = sin(2*pi*t) + 0.125*sin(2*pi*25*t);
data(4,:) = sin(2*pi*5*t) + sin(2*pi*pi*t);
data(5,:) = exp(-20*(t-0.5).^2).*sin(2*pi*10*t);
data(6,:) = exp(-5*t).*sin(2*pi*20*t);
data(7,:) = sin(2*pi*(0.5*20*t.^2));
data(8,:) = sin(2*pi*(10 * t + 10 * sin(2*pi*2*t)/(2*pi*2)));
for n = 1 : rows*columns
  subplot (rows, columns, n, "align");
  plot(t, data(n,:));
  xlabel "time"
  ylabel "x(t)"
endfor