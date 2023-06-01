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
plot(levels, phases, '*');
ylabel('n \cdot \beta');
xlabel('n');

