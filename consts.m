L = 100e-6;
C = 400e-12;
omega = 108500

sqrt(L / C)
LC = sqrt(L * C)
f_kitaon = (2 / sqrt(L*C)) / (2*pi)

%%
beta = 2 * asin(omega * sqrt(L*C)/2)
%% 
nsigma(1.735e-7, 1.1975e-8, 2e-07, 0)


omega = 165600
R = 0.9
Z0 = 560
R1 = Z0 * (1+R) / (1-R)
% phase = 0.0069
phase = 0.199

%%

trt = phase / (pi * omega);

vq = 1 / trt



