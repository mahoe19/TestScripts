total_LOT=70560;
delta_t05=readmatrix("changing_pBlock/05with_delta_t.csv");
delta_t05=delta_t05(:,1);
delta_t05=delta_t05(3:end-2,:);
delta_t05=delta_t05*1000;
percent05=3640/total_LOT;
bitFileSize05=1611859;

delta_t10=readmatrix("changing_pBlock/10with_delta_t.csv");
delta_t10=delta_t10(:,1);
delta_t10=delta_t10(3:end-2,:);
delta_t10=delta_t10*1000;
percent10=7000/total_LOT;
bitFileSize10=5091983;

delta_t15=readmatrix("changing_pBlock/15with_delta_t.csv");
delta_t15=delta_t15(:,1);
delta_t15=delta_t15(3:end-2,:);
delta_t15=delta_t15*1000;
percent15=10520/total_LOT;
bitFileSize15=5091983;

delta_t20=readmatrix("changing_pBlock/20with_delta_t.csv");
delta_t20=delta_t20(:,1);
delta_t20=delta_t20(3:end-2,:);
delta_t20=delta_t20*1000;
percent20=14120/total_LOT;
bitFileSize20=5091983;

delta_t25=readmatrix("changing_pBlock/25with_delta_t.csv");
delta_t25=delta_t25(:,1);
delta_t25=delta_t25(3:end-2,:);
delta_t25=delta_t25*1000;
percent25=17680/total_LOT;
bitFileSize25=5102143;

delta_t30=readmatrix("changing_pBlock/30with_delta_t.csv");
delta_t30=delta_t30(:,1);
delta_t30=delta_t30(3:end-2,:);
delta_t30=delta_t30*1000;
percent30=21240/total_LOT;
bitFileSize30=5316351;

delta_t35=readmatrix("changing_pBlock/35with_delta_t.csv");
delta_t35=delta_t35(:,1);
delta_t35=delta_t35(3:end-2,:);
delta_t35=delta_t35*1000;
percent35=24760/total_LOT;
bitFileSize35=5462495;

delta_t40=readmatrix("changing_pBlock/40with_delta_t.csv");
delta_t40=delta_t40(:,1);
delta_t40=delta_t40(3:end-2,:);
delta_t40=delta_t40*1000;
bitFileSize1 =5728119;
percent40=28400/total_LOT;
bitFileSize40=5462495;

delta_t45=readmatrix("changing_pBlock/45with_delta_t.csv");
delta_t45=delta_t45(:,1);
delta_t45=delta_t45(3:end-2,:);
delta_t45=delta_t45*1000;
percent45=31640/total_LOT;
bitFileSize45=5462495;

delta_t50=readmatrix("changing_pBlock/50with_delta_t.csv");
delta_t50=delta_t50(:,1);
delta_t50=delta_t50(3:end-2,:);
delta_t50=delta_t50*1000;
percent50=35280/total_LOT;
bitFileSize50=5462495;

delta_t55=readmatrix("changing_pBlock/55with_delta_t.csv");
delta_t55=delta_t55(:,1);
delta_t55=delta_t55(3:end-2,:);
delta_t55=delta_t55*1000;
percent55=38880/total_LOT;
bitFileSize55=5462495;

delta_t60=readmatrix("changing_pBlock/60with_delta_t.csv");
delta_t60=delta_t60(:,1);
delta_t60=delta_t60(3:end-2,:);
delta_t60=delta_t60*1000;
percent60=43320/total_LOT;
bitFileSize60=5392583;

delta_t65=readmatrix("changing_pBlock/65with_delta_t.csv");
delta_t65=delta_t65(:,1);
delta_t65=delta_t65(3:end-2,:);
delta_t65=delta_t65*1000;
percent65=45864/total_LOT;
bitFileSize65=5769591;

delta_t70=readmatrix("changing_pBlock/70with_delta_t.csv");
delta_t70=delta_t70(:,1);
delta_t70=delta_t70(3:end-2,:);
delta_t70=delta_t70*1000;
percent70=49392/total_LOT;
bitFileSize70=5769591;

delta_t75=readmatrix("changing_pBlock/75with_delta_t.csv");
delta_t75=delta_t75(:,1);
delta_t75=delta_t75(3:end-2,:);
delta_t75=delta_t75*1000;
percent75=53120/total_LOT;
bitFileSize75=5764983;

mean05=mean(delta_t05);
mean10=mean(delta_t10);
mean15=mean(delta_t15);
mean20=mean(delta_t20);
mean25=mean(delta_t25);
mean30=mean(delta_t30);
mean35=mean(delta_t35);
mean40=mean(delta_t40);
mean45=mean(delta_t45);
mean50=mean(delta_t50);
mean55=mean(delta_t55);
mean60=mean(delta_t60);
mean65=mean(delta_t65);
mean70=mean(delta_t70);
mean75=mean(delta_t75);

delta_tp=[delta_t05;delta_t10; delta_t15; delta_t25; delta_t30; delta_t40; delta_t45; delta_t50; delta_t55; delta_t60; delta_t65; delta_t70; delta_t75];

means=[mean05,mean10,mean15,mean20,mean25,mean30,mean35,mean40,mean45,mean50,mean55,mean60,mean65,mean70,mean75];
means_p=means;
%x=[bitFileSize1,bitFileSize2,bitFileSize3,bitFileSize4,bitFileSize5];
percent=[percent05,percent10,percent15,percent20,percent25,percent30,percent35,percent40,percent45,percent50,percent55,percent60,percent65,percent70,percent75];
fileSize=[bitFileSize05,bitFileSize10,bitFileSize15,bitFileSize20,bitFileSize25,bitFileSize30,bitFileSize35,bitFileSize40,bitFileSize45,bitFileSize50,bitFileSize55,bitFileSize60,bitFileSize65,bitFileSize70,bitFileSize75];
fileS_p=fileSize/1000000;

figure
plot(percent,means,'-o')
title("Percentage usage of LUT/Reconfiguration time")
xlabel('Percentage of LUT inside P-Block [%]')
ylabel('Reconfiguration time[ms]')
yticks([round(min(means),0):0.5:round(max(means),0)]);

delta_x = fileSize'\means';
yCalc1 = delta_x*fileSize;
mdl = fitlm(fileSize,means);
figure
scatter(fileSize,means,'X')
hold on
plot(mdl);
title("File Size/Reconfiguration time")
xlabel('File size[mB]')
ylabel('Reconfiguration time[ms]')
yticks([round(min(means),0):0.5:round(max(means),0)]);

figure
plot(fileSize,means,'-o')
title("File Size/Reconfiguration time")
xlabel('File size[mB]')
ylabel('Reconfiguration time[ms]')

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



