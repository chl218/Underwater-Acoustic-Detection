def get_sec(time_str):
    h, m, s = time_str.split(':')
    return float(h) * 3600 + float(m) * 60 + float(s)

target = 'GofMX_MP01_100804_155345.df100.x'
interval_file = 'audio_segments/' + target + '_intervals'
sample = []
result = []
input_file_index = 0
start_time_index = 4
end_time_index = 5

f = open('FishLog_jpatel.xls - Detections.csv', 'r')
for line in f:
	attrs = line.split(',')
	if target in attrs[input_file_index]:
		start = get_sec(attrs[start_time_index].split(' ')[1])
		end = get_sec(attrs[end_time_index].split(' ')[1])
		sample.append([start, end])
f.close()

f = open(interval_file, 'r')
for line in f:
	attrs = line.split(',')
	result.append([float(attrs[0]), float(attrs[1])])
f.close()

base = len(sample);
hit = 0;

for s in sample:
	for r in result:
		if ((s[0]<r[0] and s[1]<r[1] and r[0]<s[1]) or
			(s[0]>r[0] and s[1]>r[1] and r[1]>s[0]) or
			(s[0]>r[0] and s[1]<r[1])):
			hit+=1
			break

print hit / float(base)
