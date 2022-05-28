analyze_const;
analyze_percent;
analyze_temp;

delta_tall = [delta_tp; delta_tt; delta_t; delta_tconst];

bins = 50;
figure
hist(delta_tall, bins)
xlabel('Data');
ylabel('Reconfiguration time[ms]')