
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
y1 = plot(x',a_with,'-rp');
hold on
y2 = plot(x',b_no,'-bo');

Q = [0.325773 0.381328 0.396861 0.399326 0.399326 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105 0.415105];
y3=plot(x',Q,'-b*');

LPAQ = [0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598 0.415598];
y4=plot(x',LPAQ,'-rd');
MemenetQ=[0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
y5=plot(x',MemenetQ,'-kh');
% text('karate club');
xlabel('generations');
ylabel('Modularity');
legend('DPSOCD with label propagation','DPSOCD with random initialization','DPSO with random initialization','DPSO with label propagation','Meme-net with heuristic');
set(gca,'linewidth',2.0);
set(y1,'linewidth',2.0);
set(y2,'linewidth',2.0);
set(y3,'linewidth',2.0);
set(y4,'linewidth',2.0);
set(y5,'linewidth',2.0);

g1 = gtext('convergence trajectory of karate');
g2 = gtext('convergence trajectory of netscience');

hh=findobj('tag','legend') ;
set(hh,'fontsize',12) ;
set(g1,'fontsize',12) ;
set(g2,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);

hold off;




