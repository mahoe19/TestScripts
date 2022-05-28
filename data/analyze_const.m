clear
total_LUT=70560;
total_LUTRAM=28800;
total_FF=141120;
bitFileSize05=1611859;

delta_t2=readmatrix("const_redo/with_delta_t_const2.csv");
delta_t2=delta_t2(:,1);
delta_t2=delta_t2(3:end-2,:);
delta_t2=delta_t2*1000;
LUTp2=5443/total_LUT*100;
LUTRAMp2=3202/total_LUTRAM*100;
FFp2=2229/total_FF*100;

delta_t3=readmatrix("const_redo/with_delta_t_const3.csv");
delta_t3=delta_t3(:,1);
delta_t3=delta_t3(3:end-2,:);
delta_t3=delta_t3*1000;
LUTp3=7819/total_LUT*100;
LUTRAMp3=5122/total_LUTRAM*100;
FFp3=2360/total_FF*100;

delta_t4=readmatrix("const_redo/with_delta_t_const4.csv");
delta_t4=delta_t4(:,1);
delta_t4=delta_t4(3:end-2,:);
delta_t4=delta_t4*1000;
LUTp4=11009/total_LUT*100;
LUTRAMp4=7682/total_LUTRAM*100;
FFp4=2527/total_FF*100;

delta_t5=readmatrix("const_redo/with_delta_t_const5.csv");
delta_t5=delta_t5(:,1);
delta_t5=delta_t5(3:end-2,:);
delta_t5=delta_t5*1000;
LUTp5=14185/total_LUT*100;
LUTRAMp5=10242/total_LUTRAM*100;
FFp5=2693/total_FF*100;

delta_t6=readmatrix("const_redo/with_delta_t_const6.csv");
delta_t6=delta_t6(:,1);
delta_t6=delta_t6(3:end-2,:);
delta_t6=delta_t6*1000;
LUTp6=20539/total_LUT*100;
LUTRAMp6=15362/total_LUTRAM*100;
FFp6=2574/total_FF*100;

delta_t7=readmatrix("const_redo/with_delta_t_const7.csv");
delta_t7=delta_t7(:,1);
delta_t7=delta_t7(3:end-2,:);
delta_t7=delta_t7*1000;
LUTp7=26904/total_LUT*100;
LUTRAMp7=20482/total_LUTRAM*100;
FFp7=2459/total_FF*100;

mean2=mean(delta_t2);
mean3=mean(delta_t3);
mean4=mean(delta_t4);
mean5=mean(delta_t5);
mean6=mean(delta_t6);
mean7=mean(delta_t7);


%delta_t=[delta_t05(1:600,:),delta_t10(1:600,:),delta_t25(1:600,:),delta_t30(1:600,:),delta_t35(1:600,:)];

means=[mean2,mean3,mean4,mean5,mean6,mean7];
%x=[bitFileSize1,bitFileSize2,bitFileSize3,bitFileSize4,bitFileSize5];
LUTp=[LUTp2,LUTp3,LUTp4,LUTp5,LUTp6,LUTp7];
LUTRAMp=[LUTRAMp2,LUTRAMp3,LUTRAMp4,LUTRAMp5,LUTRAMp6,LUTRAMp7];
FFp=[FFp2,FFp3,FFp4,FFp5,FFp6,FFp7];
FFp=sort(FFp)

figure
plot(LUTp,means,'-o')
title("Usage of LUT and Reconfiguration time")
xlabel('Percentage of used LUT inside P-Block [%]')
ylabel('Reconfiguration time[ms]')
yticks([round(min(means),2):0.01:round(max(means),2)]);


%hist(delta_t05)

%bins=15;
%subplot(3,2,1);
%    hist(delta_t05,bins);
%subplot(3,2,2);
%    hist(delta_t10,bins);
%subplot(3,2,3);
%    hist(delta_t25,bins);
%subplot(3,2,4);
%    hist(delta_t30,bins);
%subplot(3,2,5);
%    hist(delta_t35,bins);
%subplot(3,2,6);
%    plot(x,y);

