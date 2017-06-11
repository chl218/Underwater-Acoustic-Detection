
clc;
clear;

format long
format compact

%% ----------------------------------------------------------------------------

plotm = 3;
plotn = 3;

dat = 'audio.wav';
%dat = 'hellohello.m4a';
[y, Fs] = audioread(dat);

% Convert to mono channel; if not already
[r, c] = size(y);
if c > 1
   y = y(:,1);
end

S = y;         % Signal
F = Fs         % Sampling Frequency (Hz)
T = 1/F        % Sampling Period (sec)
L = length(y)  % Length of Signal
t = (0:L-1)*T; % Time vector

w = 100 / (T*1000/1); % Window size (100 ms)



%% ----------------------------------------------------------------------------

[upper, lower] = envelope(S);


%% ----------------------------------------------------------------------------

factor = 5;
upperThreshold = factor*mean(upper)
lowerThreshold = factor*mean(lower)

filteredUpper = upper;
filteredUpper(upper < upperThreshold) = 0;

filteredLower = lower;
filteredLower(lower > lowerThreshold) = 0;

strideDistance = 1e3;
globalUpperMax = max(filteredUpper);
globalLowerMin = min(filteredLower);

globalFactor = 0.5;
globalUpperThreshold = globalFactor * globalUpperMax;
globalLowerThreshold = globalFactor * globalLowerMin;


[pksUpper, locsUpper] = findpeaks(filteredUpper, ...
                        'MinPeakHeight', globalUpperThreshold, ...
                        'MinPeakDistance', strideDistance);
                     
[pksLower, locsLower] = findpeaks(abs(filteredLower), ...
                        'MinPeakHeight', abs(globalLowerThreshold), ...
                        'MinPeakDistance', strideDistance);
pksLower = -1*pksLower;




% ----------------------------------------------------------------------------

candidateAmt = length(locsUpper)
candidates = [];

upperBound = length(filteredUpper);
lowerBound = 1;

for i = 1:candidateAmt
   b = locsUpper(i)-(F/2)-1;
   e = locsUpper(i)+(F/2);
   if b < lowerBound
      b = lowerBound;
   end
   if e > upperBound
      e = upperBound;
   end
   
   fprintf('i:%d b:%d e:%d\n', locsUpper(i), b, e);
   candidates = [candidates; S(b:e)];
   
   figure(2);
   subplot(ceil(candidateAmt/3), 3, i);
   plot(b:e, S(b:e));
   title('Candidate ' + string(i));
end


% for i=1:candidateAmt
%   fd = fopen('out'+string(i)+'.dat', 'w');
%   
%   if i == 1
%      b = 1;
%      e = F;
%   else
%      b = (i-1)*F+1;
%      e = (i-1)*F+F;
%   end
%   
%   if b < 0
%      b = 0;
%   end
%   if e > length(candidates)
%      e = length(candidates);
%   end
%   
%   fprintf(fd, '%.5f\n', candidates(b:e));
%   
%   fclose(fd);
% end
 

figure(1);
subplot(3,1,1);
plot(t,S);
title('Original Signal');
ylabel('Amplitude');
xlabel('Time (sec)');

figure(1);
subplot(3,1,2);
plot(t, upper, t, lower), 
title('Envelope');
ylabel('Amplitude');
xlabel('Time (sec)');
legend('Upper', 'Lower');

figure(1);
subplot(3,1,3);
plot(t, filteredUpper, t, filteredLower, ...
   locsUpper*T, pksUpper, 'x', locsLower*T, pksLower, 'x');

title('Thresholding');
ylabel('Amplitude');
xlabel('Time (sec)');
