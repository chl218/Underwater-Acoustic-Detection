files = dir('*.dat');
for file = files'
   file(1).name
   fd = fopen(file(1).name, 'r');
   call = fscanf(fd, '%f');
   %plot(call);
end
f