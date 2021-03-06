clear
delta_tdebug=readmatrix("Benchmark_Logic_analyzer/with_delta_t_exported_debug_reconfiguration_times.csv");
delta_tdebug=delta_tdebug(:,1);
delta_tdebug=delta_tdebug(1:end,:);
delta_tdebug=delta_tdebug*1000;

delta_tlogic=readmatrix("Benchmark_Logic_analyzer/with_delta_t_logic_analyzer");
delta_tlogic=delta_tlogic(:,1);
delta_tlogic=delta_tlogic(2:end-1,:);
delta_tlogic=delta_tlogic*1000;

mean_debug = mean(delta_tdebug)
mean_logic = mean(delta_tlogic)

bins=25;

subplot(1,2,1);
    hist(delta_tdebug,bins)
    ylabel('Frequency[N]')
    xlabel('Reconfiguration time[ms]')
    title('Extracted data from debuging tool')
    str = {'mean from debugging:',mean_debug};
    xline(mean_debug,'-.r',str)
subplot(1,2,2);
    hist(delta_tlogic,bins)
    ylabel('Frequency[N]')
    xlabel('Reconfiguration time[ms]')
    title('Data from logic analyzer')
    str = {'mean from logic analyzer:',mean_logic};
    xline(mean_logic,'-.r',str)