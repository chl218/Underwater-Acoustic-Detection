function [ candidates, candidateAmount ] = signal_detection( audioFile )

% Number of samples and sampling rate
[samples, frequency] = audioread(audioFile);

% Duration of the audio file
duration = (1/frequency)*length(samples);

timeLimit = 60;
maxSamples = timeLimit * frequency;

% Limit input sample to 1 min
if duration > timeLimit 
   data = samples(1:maxSamples);
else
   data = samples;   
end


subplot(3, 1, 1);
dataLength = linspace(1, length(data)/frequency, length(data));
plot(dataLength, data), hold on;

% Find peaks
[peaks, locations] = findpeaks(data);

subplot(3,1,2);
plot(locations, peaks, 'x', dataLength, data), hold on;


difference = 5;
threshold = mean(difference*peaks);
hits = zeros(1, length(peaks));

% Filter out noise
for p = 1:length(peaks)
   if peaks(p) > threshold
      hits(p) = peaks(p);
   end
end

subplot(3,1,3);
plot(locations, hits, 'x'), hold on;

candidates = zeros(1, 2, nchoosek(sum(hits > 0),2));
candidateAmount = 1;

% Return all combinations of potential fish calls
for i = 1:length(locations)
   if hits(i) > 0
      for ii = i+1:length(locations)
         if hits(ii) > 0
            candidates(:,:,canidateAmount) = ...
               [(1/frequency)*locations(i), (1/frequency)*locations(ii)];
            candidateAmount = candidateAmount + 1;
         end
      end
   end
end


end
