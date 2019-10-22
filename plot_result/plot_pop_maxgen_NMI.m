%%%%%%%%%%%%%%%测试pop和maxgen对算法的影响

figure(1)
x=0:0.05:0.5;
%%%%%%%%%固定maxgen为100
pop60=[1	1	1	1	1	1	1	1	1	0.8677	0.8072];
pop80=[1	1	1	1	1	1	1	1	0.9962	0.8247	0.8571];
pop100=[1	1	1	1	1	1	1	1	1	1	0.5991];
pop120=[1	1	1	1	1	1	1	1	1	0.8187	0.5502];
pop140=[1	1	1	1	1	1	1	1	1	0.941	0.5716];
pop160=[1	1	1	1	1	1	1	1	0.9952	0.9524	0.7247];

%%%%%%%%%固定pop为100
maxgen60=[1	1	1	1	1	1	1	1	1	0.8748	0.5584];
maxgen80=[1	1	1	1	1	1	1	1	1	1	0.5735];
maxgen100=[1	1	1	1	1	1	1	1	1	1	0.5991];
maxgen120=[1	1	1	1	1	1	1	1	1	1	0.5621];
maxgen140=[1	1	1	1	1	1	1	1	1	1	0.83];
maxgen160=[1	1	1	1	1	1	1	1	1	1	0.5687];

subplot(2,2,1);
y1=plot(x',pop60,'-r*');
hold on;
y2=plot(x',pop80,'-kv');
y3=plot(x',pop100,'-bs');
y4=plot(x',pop120,'-mp');
y5=plot(x',pop140,'-c^');
y6=plot(x',pop160,'-go');

xlabel('The Mixing Parameter \gamma in Benchmark ');
ylabel('NMI');
legend('pop=60','pop=80','pop=100','pop=120','pop=140','pop=160');
set(gca,'linewidth',2.0);
set(y1,'linewidth',2.0);
set(y2,'linewidth',2.0);
set(y3,'linewidth',2.0);
set(y4,'linewidth',2.0);
set(y5,'linewidth',2.0);
set(y6,'linewidth',2.0);
hh=findobj('tag','legend') ;
set(hh,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);

subplot(2,2,2);
y1=plot(x',maxgen60,'-r*');
hold on;
y2=plot(x',maxgen80,'-kv');
y3=plot(x',maxgen100,'-bs');
y4=plot(x',maxgen120,'-mp');
y5=plot(x',maxgen140,'-c^');
y6=plot(x',maxgen160,'-go');

xlabel('The Mixing Parameter \gamma in Benchmark ');
ylabel('NMI');
legend('maxgen=60','maxgen=80','maxgen=100','maxgen=120','maxgen=140','maxgen=160');
set(gca,'linewidth',2.0);
set(y1,'linewidth',2.0);
set(y2,'linewidth',2.0);
set(y3,'linewidth',2.0);
set(y4,'linewidth',2.0);
set(y5,'linewidth',2.0);
set(y6,'linewidth',2.0);
hh=findobj('tag','legend') ;
set(hh,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);

