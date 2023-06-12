% path = "n1/300000.csv";
% name_as_number = 300000;
% name = "300000.csv";

path = "trt/15.csv"
mat = readmatrix(path);

t = mat(:,4);
v0 = mat(:,5);
vn = mat(:,11);
% omega = name_as_number * 2 * pi;
omega = 165600 * 2 * pi;

%%
[v0_max_value, v0_max_index] = max(v0);
[v0_min_value, v0_min_index] = min(v0);
[vn_max_value, vn_max_index] = max(vn);

t = t * omega;
t0 = t(v0_max_index);
tn = t(vn_max_index);
phase_difference = tn - t0;
phase_difference_mod = mod(phase_difference, 2*pi);
half_wave_length = abs(t(v0_max_index) - t(v0_min_index));

 
fig = figure;
hold on 
plot(t, v0);
plot(t, vn);
quiver(t0, v0_max_value, tn - t0 , v0_max_value - v0_max_value, 0, 'LineWidth', 1.5);
ax = axis;

% Calculate the coordinates for the text
textX = (ax(2) + ax(1)) / 2;
textY = ax(4) - (ax(4) - ax(3)) * 0.05; % Adjust the vertical position if needed

% Add the text to the plot
text(textX, textY, "phase: " + num2str(phase_difference) + "     phase mod: " ...
    + num2str(phase_difference_mod) + "  half wave length: " + num2str(half_wave_length) ...
, 'HorizontalAlignment', 'right', 'FontSize', 15);
% text(textX, textY + 200, "half wave length: " + num2str(half_wave_length), 'HorizontalAlignment', 'center', 'FontSize', 15); 




hold off
legend({"v0", "vn"});

title(name)

% mkdir figfig
% savefig(fig, fullfile('fig', name + ".fig"))
saveas(gcf, fullfile('fig_cavity', name + ".png"))


% 28, 26, 24, 22, 20, 18*, 16, 14

% if phase_difference < 0
%     phase_difference = phase_difference+ 2*pi;
% end


%% 


