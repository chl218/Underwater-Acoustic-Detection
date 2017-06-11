%function demo_energy_detection

%define location of data
%file = 'LJ21P1_130617_094835_10s_2xSealBomb.x.wav';
file = 'test1.wav';

%load data
y = audioread(file);

%plot
figure(1)
subplot(2,1,1)
plot(y), hold on

%define threshold
thr = ones(length(y),1)*0.05;

plot(thr,'r')

%%%%%%%%%
%prepare data for detection
pre_env_y=hilbert(y.'); 
env_y=sqrt((real(pre_env_y)).^2+(imag(pre_env_y)).^2); %Au 1993, p.178, equation 9-4

plot(env_y,'g'), hold off

% Compute the Teager/Kaiser energy of the given signal
% Returns the per sample energy for all samples except the first & last
%
% signal may either be a column vector or a matrix whose columns are
% signals.  The first and last columns of the energy signal are not
% defined.


Energy = zeros(size(y));

[rows, cols] = size(y);
if rows <= 1
    error('y must be 1 or more column vectors')
end
Energy(2:rows-1, :) = y(2:rows-1,:).^2 - y(1:rows-2,:) .* y(3:end,:);

subplot(2,1,2)
plot(Energy,'r'), hold off
