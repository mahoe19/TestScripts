delta_t=readmatrix("with_delta_t.csv");
delta_t=delta_t(:,1);
delta_t=delta_t(2:end,:);
delta_t=delta_t*1000;

close all
x=-10:.1:10;
y=sin(x);
plot(x,y);