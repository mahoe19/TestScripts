clear
delta_tSD=readmatrix("changing_pBlock/SD_with_delta_t.csv");
delta_tSD=delta_tSD(:,1);
delta_tSD=delta_tSD(3:end-2,:);
delta_tSD=delta_tSD*1000;
bitFileSizeSD =5462495;

delta_theap=readmatrix("changing_pBlock/heap_with_delta_t.csv");
delta_theap=delta_theap(:,1);
delta_theap=delta_theap(3:end-2,:);
delta_theap=delta_theap*1000;
bitFileSizeHeap =5462495;

delta_tf=readmatrix("changing_pBlock/f_read_with_delta_t.csv");
delta_tf=delta_tf(:,1);
delta_tf=delta_tf(3:end-2,:);
delta_tf=delta_tf*1000;
bitFileSizef =5462495;


meanSD=mean(delta_tSD)
meanHeap=mean(delta_theap)
meanf=mean(delta_tf)

means=[meanSD,meanHeap];

subplot(1,2,1);
    boxplot(delta_tSD)
    xlabel('SD')
    ylabel('Read time[ms]')
    title('Sd card read time')
subplot(1,2,2);
    boxplot(delta_theap)
    xlabel('Heap')
    ylabel('Read time[ms]')
    title('Heap read time')

