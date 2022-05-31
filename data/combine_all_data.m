clear
analyze_const;
analyze_percent;
analyze_temp;

delta_tall = [delta_tp; delta_tconst]; %delta_tt
FileS=[fileS_p, fileS_c];%fileS_c, %fileS_t,
Means=[means_p, means_c];%means_c, % means_t,


bins = 50;

mdl = fitlm(FileS,Means);

close all
figure
scatter(FileS,Means,'X')
hold on
grid on
plot(mdl);
title("Bit file size and Reconfiguration time")
xlabel('Bit file size[MB]')
ylabel('Reconfiguration time[ms]')
%yticks([round(min(Means),1):0.2:round(max(Means),2)]);
