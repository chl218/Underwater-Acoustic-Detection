function sound_detection_fft

[f1,Fs1] = audioread('test1.wav');
% sound(f1, Fs1);
% f1=f1(1:600);
L1 = length(f1);
t1 = linspace(0, L1/Fs1, L1);

subplot(4, 1, 1);
plot(t1, f1);

f1=f1.*abs(f1)/max(abs(f1));

pre_env_y=hilbert(f1.'); 
f1=sqrt((real(pre_env_y)).^2+(imag(pre_env_y)).^2);

subplot(4, 1, 2);
plot(t1, f1);

[pkt,lct] = findpeaks(f1,t1);
subplot(4, 1, 3);
plot(lct,pkt,'x', t1, f1);

peaks = findpeaks(f1,t1);

peaks( abs(peaks-mean(peaks)) < 6*std(peaks) ) = 0;
peaks(peaks<=0) = [];
meanPeak = mean(peaks);
display(meanPeak);

f1(f1<=meanPeak) = 0;

subplot(4, 1, 4);
plot(t1, f1);
