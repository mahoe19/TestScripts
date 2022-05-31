data = delta_t65;

[h,p,ci,stats] = ttest(data)



stan = std(data);               % Standard Error
ts95 = tinv([0.025  0.975],length(data)-1);      % T-Score
ci95 = mean(data) + ts95*stan
ts99 = tinv([0.005  0.995],length(data)-1);      % T-Score
ci99 = mean(data) + ts99*stan


figure
histfit(data,25)
    ylabel('Frequency[N]')
    xlabel('Reconfiguration time[ms]')
    title('Reconfiguration time')
    str = {'mean',mean(data)};
    xline(mean(data),'-.r',str)
    str = {'95ci : ',ci95(1)};
    xline(ci95(1),'-.r',str)
    str = {'95ci : ',ci95(2)};
    xline(ci95(2),'-.r',str)
    str = {'99ci : ',ci99(1)};
    xline(ci99(1),'-.r',str)
    str = {'99ci : ',ci99(2)};
    xline(ci99(2),'-.r',str)
    text(mean(data)-std(data),85,{'std : ',stan})