delta_tt24=readmatrix("changing_temp/24gr_with_delta_t.csv");
delta_tt24=delta_tt24(:,1);
delta_tt24=delta_tt24(3:end,:);
delta_tt24=delta_tt24*1000;

delta_tt26=readmatrix("changing_temp/26gr_with_delta_t.csv");
delta_tt26=delta_tt26(:,1);
delta_tt26=delta_tt26(3:end,:);
delta_tt26=delta_tt26*1000;

delta_tt28=readmatrix("changing_temp/28gr_with_delta_t.csv");
delta_tt28=delta_tt28(:,1);
delta_tt28=delta_tt28(3:end,:);
delta_tt28=delta_tt28*1000;

delta_tt30=readmatrix("changing_temp/30gr_with_delta_t.csv");
delta_tt30=delta_tt30(:,1);
delta_tt30=delta_tt30(3:end,:);
delta_tt30=delta_tt30*1000;

delta_tt32=readmatrix("changing_temp/32gr_with_delta_t.csv");
delta_tt32=delta_tt32(:,1);
delta_tt32=delta_tt32(3:end,:);
delta_tt32=delta_tt32*1000;

delta_tt34=readmatrix("changing_temp/34gr_with_delta_t.csv");
delta_tt34=delta_tt34(:,1);
delta_tt34=delta_tt34(3:end,:);
delta_tt34=delta_tt34*1000;

delta_tt36=readmatrix("changing_temp/36gr_with_delta_t.csv");
delta_tt36=delta_tt36(:,1);
delta_tt36=delta_tt36(3:end,:);
delta_tt36=delta_tt36*1000;

delta_tt38=readmatrix("changing_temp/38gr_with_delta_t.csv");
delta_tt38=delta_tt38(:,1);
delta_tt38=delta_tt38(3:end,:);
delta_tt38=delta_tt38*1000;

delta_tt40=readmatrix("changing_temp/40gr_with_delta_t.csv");
delta_tt40=delta_tt40(:,1);
delta_tt40=delta_tt40(3:end,:);
delta_tt40=delta_tt40*1000;

delta_tt42=readmatrix("changing_temp/42gr_with_delta_t.csv");
delta_tt42=delta_tt42(:,1);
delta_tt42=delta_tt42(3:end,:);
delta_tt42=delta_tt42*1000;

delta_tt44=readmatrix("changing_temp/44gr_with_delta_t.csv");
delta_tt44=delta_tt44(:,1);
delta_tt44=delta_tt44(3:end,:);
delta_tt44=delta_tt44*1000;

delta_tt46=readmatrix("changing_temp/46gr_with_delta_t.csv");
delta_tt46=delta_tt46(:,1);
delta_tt46=delta_tt46(3:end,:);
delta_tt46=delta_tt46*1000;

delta_tt48=readmatrix("changing_temp/48gr_with_delta_t.csv");
delta_tt48=delta_tt48(:,1);
delta_tt48=delta_tt48(3:end,:);
delta_tt48=delta_tt48*1000;

delta_tt50=readmatrix("changing_temp/50gr_with_delta_t.csv");
delta_tt50=delta_tt50(:,1);
delta_tt50=delta_tt50(3:end,:);
delta_tt50=delta_tt50*1000;

delta_tt53=readmatrix("changing_temp/53gr_with_delta_t.csv");
delta_tt53=delta_tt53(:,1);
delta_tt53=delta_tt53(3:end,:);
delta_tt53=delta_tt53*1000;

delta_tt57=readmatrix("changing_temp/57gr_with_delta_t.csv");
delta_tt57=delta_tt57(:,1);
delta_tt57=delta_tt57(3:end,:);
delta_tt57=delta_tt57*1000;

delta_tt60=readmatrix("changing_temp/60gr_with_delta_t.csv");
delta_tt60=delta_tt60(:,1);
delta_tt60=delta_tt60(3:end,:);
delta_tt60=delta_tt60*1000;

delta_tt63=readmatrix("changing_temp/63gr_with_delta_t.csv");
delta_tt63=delta_tt63(:,1);
delta_tt63=delta_tt63(3:end,:);
delta_tt63=delta_tt63*1000;

mean24=mean(delta_tt24);
mean26=mean(delta_tt26);
mean28=mean(delta_tt28);
mean30=mean(delta_tt30);
mean32=mean(delta_tt32);
mean34=mean(delta_tt34);
mean36=mean(delta_tt36);
mean38=mean(delta_tt38);
mean40=mean(delta_tt40);
mean42=mean(delta_tt42);
mean44=mean(delta_tt44);
mean46=mean(delta_tt46);
mean48=mean(delta_tt48);
mean50=mean(delta_tt50);
mean53=mean(delta_tt53);
mean57=mean(delta_tt57);
mean60=mean(delta_tt60);
mean63=mean(delta_tt63);

delta_tt=[delta_tt24; delta_tt26; delta_tt28; delta_tt30; delta_tt32;delta_tt34; delta_tt36; delta_tt38; delta_tt40; delta_tt42; delta_tt44; delta_tt46; delta_tt48;delta_tt50; delta_tt53; delta_tt57; delta_tt60; delta_tt63];

y=[mean24,mean26,mean28,mean30,mean32,mean34,mean36,mean38,mean40,mean42,mean44,mean46,mean48,mean50,mean53,mean57,mean60,mean63];
means_t=y;
x=[24,26,28,30,32,34,36,38,40,42,44,46,48,50,53,57,60,63];
fileS_t=ones(1,size(y,2))
bitFileSize =5728119;
fileS_t=fileS_t*bitFileSize/1000000

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

%anova(mdl,'summary')

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