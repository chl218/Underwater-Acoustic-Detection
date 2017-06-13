function [ ] = ...
   main( audioFile, audioDuration, threshold, intervalLength )
    disp('Program starts....');
    result = [];
    chunkDuration = audioDuration;
    interval_length = intervalLength;
    
    disp('Start to cut audio files into segments....');
    info = audioinfo(audioFile);
    Fs = info.SampleRate;
    numSamplesPerChunk = chunkDuration*Fs;

    chunkCnt = 1;
    for startLoc = 1:numSamplesPerChunk:info.TotalSamples
        endLoc = min(startLoc + numSamplesPerChunk - 1, info.TotalSamples);

        y = audioread(audioFile, [startLoc endLoc]);
        outFileName = sprintf('audio_segments/%s%d.wav', strrep(audioFile,'.wav',''), chunkCnt);
        audiowrite(outFileName, y, Fs);
        chunkCnt = chunkCnt + 1;
    end
    chunkCnt = chunkCnt - 1;
    disp('Finish!');
    disp('Start to analyse signals and find peaks....');
    
    for index = 1: chunkCnt
        offset = (index - 1) * chunkDuration;
        fileName = sprintf('audio_segments/%s%d.wav', strrep(audioFile,'.wav',''), index);
        signals = signal_detection(fileName, audioDuration, threshold);
        signals = (signals + offset);
        result = horzcat(result, signals);
%         disp(signals);
    end
    disp('Finish!');
    disp('Start to create intervals and merge them....');

    disp('Start to remove all the temporary wav files....');
    delete audio_segments/*.wav;
    disp('Finish!');
    
    s = 0;
    e = 0;
    outputFileName = sprintf('audio_segments/%s_intervals_%d_%g_%g', strrep(audioFile,'.wav',''), audioDuration, threshold, intervalLength);
    for i = 1: length(result)
        c_s = 0;
        c_e = result(i) + interval_length;
        
        if result(i) < interval_length
            c_s = 0;
        else
            c_s = result(i) - interval_length;
        end

        if i == 1
            fileID = fopen(outputFileName,'w');
            fprintf(fileID,'');
            fclose(fileID);
            s = c_s;
            e = c_e;
        else
            if e > c_s
                e = c_e;
            else
                fileID = fopen(outputFileName,'a');
                fprintf(fileID,'%f,%f\n',s, e);
                fclose(fileID);
                s = c_s;
                e = c_e;
            end
        end   
    end
    fileID = fopen(outputFileName,'a');
    fprintf(fileID,'%f,%f\n',s, e);
    fclose(fileID);
    disp('Done!');
%     disp(result);
end
