clear
delta_t1=readmatrix("data_changing_util/1with_delta_t.csv");
delta_t1=delta_t1(:,1);
delta_t1=delta_t1(3:end-2,:);
delta_t1=delta_t1*1000;
bitFileSize1 =5728119;
util1=6.67;

delta_t2=readmatrix("data_changing_util/2with_delta_t.csv");
delta_t2=delta_t2(:,1);
delta_t2=delta_t2(3:end-2,:);
delta_t2=delta_t2*1000;
bitFileSize2 =5700471;
util2=11.12;

delta_t3=readmatrix("data_changing_util/3with_delta_t.csv");
delta_t3=delta_t3(:,1);
delta_t3=delta_t3(3:end-2,:);
delta_t3=delta_t3*1000;
bitFileSize3 =5677431;
util3=20.01;

delta_t4=readmatrix("data_changing_util/4with_delta_t.csv");
delta_t4=delta_t4(:,1);
delta_t4=delta_t4(3:end-2,:);
delta_t4=delta_t4*1000;
bitFileSize4 =5677431;
util4=36;%FROM GRAPH

delta_t5=readmatrix("data_changing_util/5with_delta_t.csv");
delta_t5=delta_t5(:,1);
delta_t5=delta_t5(3:end-2,:);
delta_t5=delta_t5*1000;
bitFileSize5 =5668215;
util5=44.45;


mean1=mean(delta_t1)
mean2=mean(delta_t2)
mean3=mean(delta_t3)
mean4=mean(delta_t4)
mean5=mean(delta_t5)

delta_t=[delta_t1(1:600,:),delta_t2(1:600,:),delta_t3(1:600,:),delta_t4(1:600,:),delta_t5(1:600,:)];

y=[mean1,mean2,mean3,mean4,mean5];
%x=[bitFileSize1,bitFileSize2,bitFileSize3,bitFileSize4,bitFileSize5];
x=[util1,util2,util3,util4,util5]

figure
plot(x,y,'-o')
title("Utilization/Reconfiguration time")
xlabel('Utilization of LUTRAM [%]')
ylabel('Reconfiguration time[ms]')

%bins=15;
%subplot(3,2,1);
%    hist(delta_t1,bins);
%subplot(3,2,2);
%    hist(delta_t2,bins);
%subplot(3,2,3);
%    hist(delta_t3,bins);
%subplot(3,2,4);
%    hist(delta_t4,bins);
%subplot(3,2,5);
%    hist(delta_t5,bins);
%subplot(3,2,6);
%    plot(x,y);