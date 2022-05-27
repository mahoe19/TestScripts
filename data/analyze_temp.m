clear
bitFileSize =5728119;
delta_t24=readmatrix("changing_temp/24gr_with_delta_t.csv");
delta_t24=delta_t24(:,1);
delta_t24=delta_t24(3:end,:);
delta_t24=delta_t24*1000;

delta_t26=readmatrix("changing_temp/26gr_with_delta_t.csv");
delta_t26=delta_t26(:,1);
delta_t26=delta_t26(3:end,:);
delta_t26=delta_t26*1000;

delta_t28=readmatrix("changing_temp/28gr_with_delta_t.csv");
delta_t28=delta_t28(:,1);
delta_t28=delta_t28(3:end,:);
delta_t28=delta_t28*1000;

delta_t30=readmatrix("changing_temp/30gr_with_delta_t.csv");
delta_t30=delta_t30(:,1);
delta_t30=delta_t30(3:end,:);
delta_t30=delta_t30*1000;

delta_t32=readmatrix("changing_temp/32gr_with_delta_t.csv");
delta_t32=delta_t32(:,1);
delta_t32=delta_t32(3:end,:);
delta_t32=delta_t32*1000;

delta_t34=readmatrix("changing_temp/34gr_with_delta_t.csv");
delta_t34=delta_t34(:,1);
delta_t34=delta_t34(3:end,:);
delta_t34=delta_t34*1000;

delta_t36=readmatrix("changing_temp/36gr_with_delta_t.csv");
delta_t36=delta_t36(:,1);
delta_t36=delta_t36(3:end,:);
delta_t36=delta_t36*1000;

delta_t38=readmatrix("changing_temp/38gr_with_delta_t.csv");
delta_t38=delta_t38(:,1);
delta_t38=delta_t38(3:end,:);
delta_t38=delta_t38*1000;

delta_t40=readmatrix("changing_temp/40gr_with_delta_t.csv");
delta_t40=delta_t40(:,1);
delta_t40=delta_t40(3:end,:);
delta_t40=delta_t40*1000;

delta_t42=readmatrix("changing_temp/42gr_with_delta_t.csv");
delta_t42=delta_t42(:,1);
delta_t42=delta_t42(3:end,:);
delta_t42=delta_t42*1000;

delta_t44=readmatrix("changing_temp/44gr_with_delta_t.csv");
delta_t44=delta_t44(:,1);
delta_t44=delta_t44(3:end,:);
delta_t44=delta_t44*1000;

delta_t46=readmatrix("changing_temp/46gr_with_delta_t.csv");
delta_t46=delta_t46(:,1);
delta_t46=delta_t46(3:end,:);
delta_t46=delta_t46*1000;

delta_t48=readmatrix("changing_temp/48gr_with_delta_t.csv");
delta_t48=delta_t48(:,1);
delta_t48=delta_t48(3:end,:);
delta_t48=delta_t48*1000;

delta_t50=readmatrix("changing_temp/50gr_with_delta_t.csv");
delta_t50=delta_t50(:,1);
delta_t50=delta_t50(3:end,:);
delta_t50=delta_t50*1000;

delta_t53=readmatrix("changing_temp/53gr_with_delta_t.csv");
delta_t53=delta_t53(:,1);
delta_t53=delta_t53(3:end,:);
delta_t53=delta_t53*1000;

delta_t57=readmatrix("changing_temp/57gr_with_delta_t.csv");
delta_t57=delta_t57(:,1);
delta_t57=delta_t57(3:end,:);
delta_t57=delta_t57*1000;

delta_t60=readmatrix("changing_temp/60gr_with_delta_t.csv");
delta_t60=delta_t60(:,1);
delta_t60=delta_t60(3:end,:);
delta_t60=delta_t60*1000;

delta_t63=readmatrix("changing_temp/63gr_with_delta_t.csv");
delta_t63=delta_t63(:,1);
delta_t63=delta_t63(3:end,:);
delta_t63=delta_t63*1000;

mean24=mean(delta_t24);
mean26=mean(delta_t26);
mean28=mean(delta_t28);
mean30=mean(delta_t30);
mean32=mean(delta_t32);
mean34=mean(delta_t34);
mean36=mean(delta_t36);
mean38=mean(delta_t38);
mean40=mean(delta_t40);
mean42=mean(delta_t42);
mean44=mean(delta_t44);
mean46=mean(delta_t46);
mean48=mean(delta_t48);
mean50=mean(delta_t50);
mean53=mean(delta_t53);
mean57=mean(delta_t57);
mean60=mean(delta_t60);
mean63=mean(delta_t63);


%delta_t=[delta_t1(1:600,:),delta_t2(1:600,:),delta_t3(1:600,:),delta_t4(1:600,:),delta_t5(1:600,:)];

y=[mean24,mean26,mean28,mean30,mean32,mean34,mean36,mean38,mean40,mean42,mean44,mean46,mean48,mean50,mean53,mean57,mean60,mean63];
x=[24,26,28,30,32,34,36,38,40,42,44,46,48,50,53,57,60,63];

delta_x = x'\y';
yCalc1 = delta_x*x;
mdl = fitlm(x,y);
figure
scatter(x,y,'X')
hold on
plot(mdl);
title("Temperature/Reconfiguration time")
xlabel('Temperature[C]')
ylabel('Reconfiguration time[ms]')
yticks([round(min(y),2):0.02:round(max(y),2)]);

anova(mdl,'summary')
%x_pdf = [8.5:0.001:8.8];
%pd = fitdist(delta_t60,'Normal')
%y = pdf(pd,x_pdf);
 
%figure
%histogram(delta_t60,'Normalization','pdf')
%line(x_pdf,y);

%bins=15;
%subplot(3,2,1);
%    title("1")
%    hist(delta_tcold,bins);
%subplot(3,2,2);
%    hist(delta_t53,bins);
%subplot(3,2,3);
%    hist(delta_t57,bins);
%subplot(3,2,4);
%    hist(delta_t60,bins);
%subplot(3,2,5);
%    hist(delta_t63,bins);
%subplot(3,2,6);
%    plot(x,y);