%不同算法在benchmark数据上的NMI
figure(1)
x=0:0.05:0.5;
nmi_MODPSO   = [1	1	1	1	1	1	1	1	1	0.8901	0.6225];
y1=plot(x',nmi_MODPSO,'-r*');
hold on;
nmi_Memenet=[1	1	1	1	1	1	1	1	0	0	0];
y2=plot(x',nmi_Memenet,'-kv');
nmi_GAnet   = [1	1	1	0.9131	0.78	0.5173	0.3584	0	0	0	0];
y3=plot(x',nmi_GAnet,'-bs');
nmi_GN   = [1	1	1	1	1	1	1	1	0.7823	0.5564	0.4591];
y4=plot(x',nmi_GN,'-mp');
nmi_MOEAD   = [1	1	1	1	1	1	1	1	0.7946	0.5225	0.2903];
y5=plot(x',nmi_MOEAD,'-c^');
nmi_MOCD   = [1	1 0.9975 0.9634	0.895 0.7472 0.6372	0.4279	0.3874	0.2682	0.2109];
y6=plot(x',nmi_MOCD,'-go');
nmi_MOGA   = [1	1 0.9975 0.8946	0.7503	0.6194	0.4526	0.3438	0.2311	0.1455	0.1067];
y7=plot(x',nmi_MOCD,'-yd');
MOPSOcd=[1	1	1	1	1	1	1	1	0.9952	0.8478	0.5344];
y8=plot(x',MOPSOcd,'-kh');
xlabel('The Mixing Parameter \gamma in Benchmark ');
ylabel('NMI');
legend('MODPSO','Meme-net','GA-net','GN','MOEAD-net','MOCD','MOGA-net','MOPSOcd');
set(gca,'linewidth',2.0);
set(y1,'linewidth',2.0);
set(y2,'linewidth',2.0);
set(y3,'linewidth',2.0);
set(y4,'linewidth',2.0);
set(y5,'linewidth',2.0);
set(y6,'linewidth',2.0);
set(y7,'linewidth',2.0);
set(y8,'linewidth',2.0);
hh=findobj('tag','legend') ;
set(hh,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);




%MOPSO不同的初始化对NMI的影响
figure(2)
x=0:0.05:0.5;
nmi_MODPSO_LPI   = [1	1	1	1	1	1	1	1	1	0.8901	0.6225];
y1=plot(x',nmi_MODPSO_LPI,'-r*');
hold on;
nmi_MODPSO_heuristic=[1	1	1	1	1	1	1	1	1	0.5478	0.4444];
y2=plot(x',nmi_MODPSO_heuristic,'-mv');
nmi_MODPSO_rand   = [1	1	1	1	1	1	1	1	0.8571	0.4804	0.3481];
y3=plot(x',nmi_MODPSO_rand,'-bs');
xlabel('The Mixing Parameter \gamma in Benchmark ');
ylabel('NMI');
legend('MODPSO+LPI','MODPSO+heuristic','MODPSO+random');
set(gca,'linewidth',2.0);
set(y1,'linewidth',2.0);
set(y2,'linewidth',2.0);
set(y3,'linewidth',2.0);
hh=findobj('tag','legend') ;
set(hh,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);
%%%%

%MOPSO不同的初始化和变异的组合对NMI的影响
figure(3)
x=0:0.05:0.5;
nmi_MODPSO_LPI_tur   = [1	1	1	1	1	1	1	1	1	0.8901	0.6225];
y1=plot(x',nmi_MODPSO_LPI_tur,'-rp');
hold on;
nmi_MODPSO_LPI=[1	1	1	1	1	1	1	1	1	0.6364	0.5984];
y2=plot(x',nmi_MODPSO_LPI,'-rv');
nmi_MODPSO_rand   = [1 1 1 1 1 1 1 1 0.7267	0.6437	0.3481];
y3=plot(x',nmi_MODPSO_rand,'-cd');
nmi_MODPSO_rand_tur   = [1 1 1 1 1 1 1 1 1	0.7917	0.5845];
y4=plot(x',nmi_MODPSO_rand_tur,'-co');
nmi_MODPSO_heuristic   = [1 1 1 1 1 1 1 0.9820 0.7830	0.5386	0.444]; 
y5=plot(x',nmi_MODPSO_heuristic,'-bd');
nmi_MODPSO_heuristic_tur   = [1 1 1 1 1 1 1 1 1	0.7821	0.5242];
y6=plot(x',nmi_MODPSO_heuristic_tur,'-bp');
xlabel('The Mixing Parameter \gamma in Benchmark ');
ylabel('NMI');
legend('MODPSO+LPI+turbulence','MODPSO+LPI','MODPSO+random','MODPSO+random+turbulence','MODPSO+heuristic','MODPSO+heuristic+turbulence');
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
%%%%

%MOPSO不同的初始化和变异的组合对NMI的影响
figure(4)
x=0:0.05:0.5;
nmi_MODPSO_LPI_tur   = [1	1	1	1	1	1	1	1	1	0.8901	0.6225];
y1=plot(x',nmi_MODPSO_LPI_tur,'-rp');
hold on;
nmi_MODPSO_LPI=[1	1	1	1	1	1	1	1	1	0.6364	0.5984];
y2=plot(x',nmi_MODPSO_LPI,'-rv');
nmi_MODPSO_rand   = [1 1 1 1 1 1 1 1 0.7267	0.6437	0.3481];
y3=plot(x',nmi_MODPSO_rand,'-cd');
nmi_MODPSO_rand_tur   = [1 1 1 1 1 1 1 1 1	0.7917	0.5845];
y4=plot(x',nmi_MODPSO_rand_tur,'-co');
xlabel('The Mixing Parameter \gamma in Benchmark ');
ylabel('NMI');
legend('MODPSO+LPI+turbulence','MODPSO+LPI','MODPSO+random','MODPSO+random+turbulence');
set(gca,'linewidth',2.0);
set(y1,'linewidth',2.0);
set(y2,'linewidth',2.0);
set(y3,'linewidth',2.0);
set(y4,'linewidth',2.0);
hh=findobj('tag','legend') ;
set(hh,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);
%%%%