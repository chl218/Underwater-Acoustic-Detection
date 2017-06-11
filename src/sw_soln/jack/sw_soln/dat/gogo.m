

file = 'test1.wav';
[y, fs] = audioread(file);

subplot(3,1,1); plot(y);

[yu, yl] = envelope(y.*y);
subplot(3,1,2); plot(yu), hold on, plot(yl);

threshold_u = mean(yu)
threshold_l = mean(yl)
yus = zeros(1, length(yu));
yls = zeros(1, length(yl));
for i = 1:length(yu)
   if yu(i) > threshold_u
      yus(i) = yu(i);
   end 
   
   if yl(i) < threshold_l
      yls(i) = yl(i);
   end
end

subplot(3,1,3); plot(yus), hold on, plot(yls);

