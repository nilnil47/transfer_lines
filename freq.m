% path = /108500/
mat = readmatrix(path);
omega = 108500 * 2 * pi;

t = mat(:,4);
v0 = mat(:,5);
vn = mat(:,11);

%%
[v0_max_value, v0_max_index] = max(v0);
[vn_max_value, vn_max_index] = max(vn);

t = omega * t;
t0 = t(v0_max_index);
tn = t(vn_max_index);

 
% fig = figure;
% hold on 
% plot(t, v0);
% plot(t, vn);
% quiver(t0, v0_max_value, tn - t0 , v0_max_value - v0_max_value, 0, 'LineWidth', 1.5);
% hold off
% legend({"v0", "vn"})
% title(name)

% mkdir fig
% savefig(fig, fullfile('fig', name + ".fig"))
% saveas(gcf, fullfile('fig', name + ".png"))


% 28, 26, 24, 22, 20, 18*, 16, 14

phase_difference = abs(tn - t0);
if phase_difference < 0
    phase_difference = phase_difference+ 2*pi;
end

%% calirate

% [v0_max_value, v0_max_index] = max(v0);
% [v0_min_value, v0_min_index] = min(v0);
% omega_effective = pi / abs(t(v0_max_index) - t(v0_min_index));



