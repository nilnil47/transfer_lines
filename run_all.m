files = dir('108500/*.csv');
% files = dir()
phases = [];
omegas = [];
for i = 1:length(files)
    name = files(i).name;
    path = fullfile(files(i).folder, files(i).name);
    disp(path)
    
    freq 
    phases = [phases, phase_difference];
     % omegas = [omegas, omega_effective];
end

levels = [0 1 10 12 14 16 18 2 20 22 24 26 28 30 4 6 8];
levels = sort(levels);
phases = sort(phases);
%% 
figure
errorbars
plot(levels, phases, '*');
ylabel('n \cdot \beta');
xlabel('n');
saveas(gcf, fullfile('fig', "beta_n.png"))



%%

L = 100e-6;
C = 400e-12;


files = dir('n1/*.csv');
% files = dir()
phases = [];
omegas = [];
for i = 1:length(files)
    name = files(i).name;
    name_as_number = str2double(name(1:end-4));
    path = fullfile(files(i).folder, files(i).name);
    disp(path)
    
    same_freq_change_n
    phases = [phases, phase_difference_mod];
    omegas = [omegas, name_as_number];
end
%%
% omegas = 2*pi*omegas
figure
L = 100e-6;
C = 400e-12;

betas = sin(phases / 2);

hold on
plot(omegas, phases, '*');
% beta_theory = 2 * asin ( omega * sqrt(L*C) / 2 )
% plot(omegas, 2 * asin ( omegas * sqrt(L*C) / 2 ), 'r-');
hold off
ylabel('n \cdot \beta');
xlabel('n');
saveas(gcf, fullfile('fig', "phases.png"))
