function sound_detection_fft

[f1,Fs1] = audioread('test1.wav');
% sound(f1, Fs1);
% f1=f1(1:200);
L1 = length(f1);
t1 = linspace(0, L1/Fs1, L1);

subplot(3, 1, 1);
plot(t1, f1), hold on;

[pkt,lct] = findpeaks(f1,t1);
subplot(3, 1, 2);
plot(lct,pkt,'x', t1, f1);

meanPeak = mean(5*findpeaks(f1,t1));
display(meanPeak);

for idx = 1:L1
    if f1(idx) < meanPeak
        f1(idx) = 0;
    end
end

subplot(3, 1, 3);
plot(t1, f1), hold on;