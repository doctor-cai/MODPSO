%不同算法在GN Extended benchmark数据上的NMI
figure(1)
x=0:0.05:0.5;
nmi_MODPSO   = [1	1	1	1	1	1	1	1	1	1	0.5991];
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
nmi_MOCD   = [1 1 1 1 0.9848  0.9393 0.7821 0.6216 0.4133 0.2869 0.2348];
y6=plot(x',nmi_MOCD,'-go');
nmi_MOGA   = [1	1 0.9975 0.8946	0.7503	0.6194	0.4526	0.3438	0.2311	0.1455	0.1067];
y7=plot(x',nmi_MOGA,'-yd');
MOPSOcd=[1	1	1	1	1	1	1	1	0.9952	0.8478	0.5344];
y8=plot(x',MOPSOcd,'-kh');
CNM=[1	1	1	1	1	0.9325	1	0.9245	0.7797	0.3535	0.0257];
y9=plot(x',CNM,'-kp');
Informap=[1	1	1	1	1	1	1	1	0	0	0];
y10=plot(x',Informap,'-kp');

xlabel('The Mixing Parameter \gamma in Benchmark ');
ylabel('NMI');
legend('MODPSO','Meme-net','GA-net','GN','MOEAD-net','MOCD','MOGA-net','MOPSO-CD-r','CNM','Informap');
set(gca,'linewidth',2.0);
set(y1,'linewidth',2.0);
set(y2,'linewidth',2.0);
set(y3,'linewidth',2.0);
set(y4,'linewidth',2.0);
set(y5,'linewidth',2.0);
set(y6,'linewidth',2.0);
set(y7,'linewidth',2.0);
set(y8,'linewidth',2.0);
set(y9,'linewidth',2.0);
set(y10,'linewidth',2.0);
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

%不同算法在LFR benchmark数据上的NMI
figure(5)
x=0:0.05:0.8;
nmi_MODPSO=[1	1	1	1	1	1	1	1	1	1	1	1	0.9975	0.9428	0.6844	0.6807	0.6742];
y1=plot(x',nmi_MODPSO,'-r*');
hold on;
nmi_GAnet   = [0.9872	0.9513	0.9026	0.8267	0.7594	0.697	0.6213	0.5719	0.506	0.4237	0.3031	0.2286	0.1981	0.1623	0.1668	0.1607	0.1348];
y3=plot(x',nmi_GAnet,'-bs');
nmi_MOEAD   = [1	0.9828	0.9033	0.8169	0.7039	0.6837	0.6796	0.6625	0.6425	0.6256	0.6215	0.6166	0.5849	0.5834	0.5721	0.5563	0.5441];
y5=plot(x',nmi_MOEAD,'-c^');
nmi_MOCD   = [0.986	0.9789	0.9619	0.9073	0.7962	0.682	0.5968	0.5142	0.493	0.3767	0.3111	0.2541	0.242	0.2023	0.2	0.1896	0.1514];
y6=plot(x',nmi_MOCD,'-go');
nmi_MOGA   = [0.982	0.9308	0.8591	0.767	0.6974	0.6206	0.5535	0.494	0.4291	0.3743	0.3354	0.2861	0.2641	0.2512	0.2461	0.2338	0.2037];
y7=plot(x',nmi_MOGA,'-yd');
MOPSOcd=[1	1	1	1	1	1	1	1	1	1	1	1	0.9984	0.9403	0.4932	0.05624	0.0401];
y8=plot(x',MOPSOcd,'-kh');
CNM=[1	0.9841	0.9351	0.8927	0.8711	0.7957	0.7895	0.6726	0.6798	0.6198	0.5653	0.5075	0.3981	0.3442	0.2261	0.1484	0.0705];
y9=plot(x',CNM,'-cp');
Informap=[1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0];
y10=plot(x',Informap,'-cp');

xlabel('The Mixing Parameter \mu in Benchmark ');
ylabel('NMI');
legend('MODPSO','GA-net','MOEAD-net','MOCD','MOGA-net','MOPSO-CD-r','CNM','Informap');
set(gca,'linewidth',2.0);
set(y1,'linewidth',2.0);
set(y3,'linewidth',2.0);
set(y5,'linewidth',2.0);
set(y6,'linewidth',2.0);
set(y7,'linewidth',2.0);
set(y8,'linewidth',2.0);
set(y9,'linewidth',2.0);
set(y10,'linewidth',2.0);
hh=findobj('tag','legend') ;
set(hh,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);