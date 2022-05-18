clear
delta_t1=readmatrix("data_changing_util/1with_delta_t.csv");
delta_t1=delta_t1(:,1);
delta_t1=delta_t1(3:end,:);
delta_t1=delta_t1*1000;
bitFileSize1 =5728119;

delta_t2=readmatrix("data_changing_util/2with_delta_t.csv");
delta_t2=delta_t2(:,1);
delta_t2=delta_t2(3:end,:);
delta_t2=delta_t2*1000;
bitFileSize2 =5700471;

delta_t3=readmatrix("data_changing_util/3with_delta_t.csv");
delta_t3=delta_t3(:,1);
delta_t3=delta_t3(3:end,:);
delta_t3=delta_t3*1000;
bitFileSize3 =5677431;

delta_t4=readmatrix("data_changing_util/4with_delta_t.csv");
delta_t4=delta_t4(:,1);
delta_t4=delta_t4(3:end,:);
delta_t4=delta_t4*1000;
bitFileSize4 =5677431;

delta_t5=readmatrix("data_changing_util/5with_delta_t.csv");
delta_t5=delta_t5(:,1);
delta_t5=delta_t5(3:end,:);
delta_t5=delta_t5*1000;
bitFileSize5 =5668215;

delta_tcold=readmatrix("data_changing_util/cold_with_delta_t.csv");
delta_tcold=delta_tcold(:,1);
delta_tcold=delta_tcold(3:end,:);
delta_tcold=delta_tcold*1000;
bitFileSize1 =5728119;


mean1=mean(delta_t1)
mean2=mean(delta_t2)
mean3=mean(delta_t3)
mean4=mean(delta_t4)
mean5=mean(delta_t5)

mean_cold=mean(delta_tcold)

delta_t=[delta_t1(1:600,:),delta_t2(1:600,:),delta_t3(1:600,:),delta_t4(1:600,:),delta_t5(1:600,:)];

y=[mean1,mean2,mean3,mean4,mean5];
x=[bitFileSize1,bitFileSize2,bitFileSize3,bitFileSize4,bitFileSize5];

bins=15;
subplot(3,2,1);
    title("1")
    hist(delta_t1,bins);
subplot(3,2,2);
    hist(delta_t2,bins);
subplot(3,2,3);
    hist(delta_t3,bins);
subplot(3,2,4);
    hist(delta_t4,bins);
subplot(3,2,5);
    hist(delta_t5,bins);
subplot(3,2,6);
    plot(x,y);
    
