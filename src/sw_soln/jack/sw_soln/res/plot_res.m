files = dir('*.dat');

datAmt = length(files);
index = 1;
for file = files'
   fd = fopen(file(1).name, 'r');
   call = fscanf(fd, '%f');
   
   figure(10);
   subplot(ceil(datAmt/3), 3, index);
   plot(call);
   title('Candidate ' + string(index));
   index = index + 1;
   fclose(fd);
end
