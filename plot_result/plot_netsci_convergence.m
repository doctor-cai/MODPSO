
a0_with = load('LPA10.txt');
a1_with = load('LPA11.txt');
a2_with = load('LPA12.txt');
a3_with = load('LPA13.txt');
a4_with = load('LPA14.txt');
a5_with = load('LPA15.txt');
a6_with = load('LPA16.txt');
a7_with = load('LPA17.txt');
a8_with = load('LPA18.txt');
a9_with = load('LPA19.txt');

b0_no = load('LPA20.txt');
b1_no = load('LPA21.txt');
b2_no = load('LPA22.txt');
b3_no = load('LPA23.txt');
b4_no = load('LPA24.txt');
b5_no = load('LPA25.txt');
b6_no = load('LPA26.txt');
b7_no = load('LPA27.txt');
b8_no = load('LPA28.txt');
b9_no = load('LPA29.txt');

a_with = (a0_with + a1_with + a2_with +a3_with + a4_with  + a5_with + a6_with + a7_with + a8_with + a9_with)/10;
b_no = (b0_no + b1_no + b2_no + b3_no + b4_no + b5_no + b6_no + b7_no + b8_no + b9_no)/10;

x=1:1:50;
y1 = plot(x',a_with,'-r');
hold on
y2 = plot(x',b_no,'-b');

xlabel('generations');
ylabel('averaged modularity');
legend('DPSOCD with label propagation','DPSOCD with random initialization');
set(gca,'linewidth',2.0);
set(y1,'linewidth',2.0);
set(y2,'linewidth',2.0);
hh=findobj('tag','legend') ;
set(hh,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);


