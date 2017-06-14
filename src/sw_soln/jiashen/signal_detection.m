function [ peakTime ] = ...
   signal_detection( audioFile, audioDuration, threshold )

% Number of samples and sampling rate
[samples, frequency] = audioread(audioFile);

% Duration of the audio file
duration = (1/frequency)*length(samples);

timeLimit = audioDuration;
difference = threshold;
peak_distance = 0.5;

maxSamples = timeLimit * frequency;

% Limit input sample to 1 min
if duration > timeLimit 
   data = samples(1:maxSamples);
else
   data = samples;   
end

dataLength = linspace(1, length(data)/frequency, length(data));
% subplot(5, 1, 1);
% plot(dataLength, data);

data=data.*abs(data)/max(abs(data));
% subplot(5, 1, 2);
% plot(dataLength, data);

pre_env_y=hilbert(data.'); 
data=sqrt((real(pre_env_y)).^2+(imag(pre_env_y)).^2);
% subplot(5, 1, 3);
% plot(dataLength, data);

% Find peaks
[peaks, locations] = findpeaks(data, dataLength,'MinPeakDistance',peak_distance);
% subplot(5,1,4);
% plot(locations, peaks, 'x', dataLength, data);

threshold = mean(difference*peaks);
hits = zeros(1, length(peaks));

% Filter out noise
for p = 1:length(peaks)
   if peaks(p) > threshold
      hits(p) = peaks(p);
   end
end

% subplot(5,1,5);
% plot(locations, hits, 'x');

peakTime = zeros(1, sum(hits > threshold));
peakHits = 1;

% Return all combinations of potential fish calls
for i = 1:length(locations)
   if hits(i) > 0
      peakTime(peakHits) = locations(i);
      peakHits = peakHits + 1;
   end
end

end
