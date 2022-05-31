
delta_tfull=readmatrix("Full_recon/with_delta_t_full_recon.csv");
delta_tfull=delta_tfull(:,1);
delta_tfull=delta_tfull(3:end-2,:);
delta_tfull=delta_tfull*1000;

mean_full=mean(delta_tfull);

bins=25;

figure
    hist(delta_tfull,bins)
    ylabel('Frequency[N]')
    xlabel('Reconfiguration time[ms]')
    title('Full reconfiguration')
    str = {'mean from full reconsfiguration:',mean_full};
    xline(mean_full,'-.r',str)