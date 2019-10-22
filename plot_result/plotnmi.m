%��ͬ�㷨��benchmark�����ϵ�NMI
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
nmi_MOCD   = [1	1 0.9975 0.9634	0.895 0.7472 0.6372	0.4279	0.3874	0.2682	0.2109];
y6=plot(x',nmi_MOCD,'-go');
nmi_MOGA   = [1	1 0.9975 0.8946	0.7503	0.6194	0.4526	0.3438	0.2311	0.1455	0.1067];
y7=plot(x',nmi_MOCD,'-yd');
MOPSOcd=[1	1	1	1	1	1	1	1	0.9952	0.8478	0.5344];
y8=plot(x',MOPSOcd,'-kh');
xlabel('The Mixing Parameter \gamma in Benchmark ');
ylabel('NMI');
legend('MODPSO','Meme-net','GA-net','GN','MOEAD-net','MOCD','MOGA-net','MOPSO-CD-r');
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





%%%%

%MOPSO��ͬ�ĳ�ʼ���ͱ������϶�NMI��Ӱ��
figure(2)
x=0:0.05:0.5;
nmi_MODPSO_LPI_tur   = [1	1	1	1	1	1	1	1	1	1	0.5991];
y1=plot(x',nmi_MODPSO_LPI_tur,'-rp');
hold on;
nmi_MODPSO_LPI=[1	1	1	1	1	1	1	0.9871	0.9436	0.4444	0.4444];
y2=plot(x',nmi_MODPSO_LPI,'-rv');
nmi_MODPSO_rand   = [1 1 1 1 1 1 1 0.9243 0.5766	0.4085	0.3773];
y3=plot(x',nmi_MODPSO_rand,'-cd');
nmi_MODPSO_rand_tur   = [1 1 1 1 1 1 1 1 1	0.9570	0.5696];
y4=plot(x',nmi_MODPSO_rand_tur,'-co');
nmi_MODPSO_heuristic   = [1 1 1 1 1 1 1 0.9764 0.7451	0.4444	0.444]; 
y5=plot(x',nmi_MODPSO_heuristic,'-bd');
nmi_MODPSO_heuristic_tur   = [1 1 1 1 1 1 1 1 1	0.8660	0.5991];
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

%MOPSO��ͬ��niche��NMI��Ӱ��
figure(3)
x=0:0.05:0.5;
nmi_MODPSO_10   = [1	1	1	1	1	1	1	1	0.9905 0.555 0.5469];
y1=plot(x',nmi_MODPSO_10,'-mp');
hold on;
nmi_MODPSO_15=[1	1	1	1	1	1	1	1	0.9771 0.8571 0.5057];
y2=plot(x',nmi_MODPSO_15,'-rv');
nmi_MODPSO_20   = [1 1 1 1 1 1 1 1 1 0.8901 0.6225];
y3=plot(x',nmi_MODPSO_20,'-gd');
nmi_MODPSO_25   = [1 1 1 1 1 1 1 1 1 0.8434 0.5075];
y4=plot(x',nmi_MODPSO_25,'-b*');
nmi_MODPSO_30   = [1 1 1 1 1 1 1 1 1 0.7725 0.5813];
y5=plot(x',nmi_MODPSO_30,'-c.');
nmi_MODPSO_35   = [1 1 1 1 1 1 1 1 1 0.8423 0.523];
y6=plot(x',nmi_MODPSO_35,'-ks');
nmi_MODPSO_40   = [1 1 1 1 1 1 1 1 1 1 0.5991];
y7=plot(x',nmi_MODPSO_40,'-rp');
nmi_MODPSO_45   = [1 1 1 1 1 1 1 1 1 0.8555 0.6363];
y8=plot(x',nmi_MODPSO_45,'-y^');
nmi_MODPSO_50   = [1 1 1 1 1 1 1 1 1 0.9102 0.6126];
y9=plot(x',nmi_MODPSO_50,'-co');
xlabel('The Mixing Parameter \gamma in Benchmark ');
ylabel('NMI');
legend('ns=10','ns=15','ns=20','ns=25','ns=30','ns=35','ns=40','ns=45','ns=50');
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
hh=findobj('tag','legend') ;
set(hh,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);
%%%%

% 
% ��figure������ ���Insert ��ʱ��ῴ������ѡ�
% ѡȡlegendѡ������ͻ���ֱ��
% x=-pi:0.01:pi
% y1=sin(x);y2=cos(x);
% plot(x,y1,'r*:',x,y2,'g-o');
% legend('y1','y2')
% text(1,2,'y1') 

% ɫ���ַ���ɫ�����ַ����͸�ʽ��Ƿ������ݵ���ʽ��Ƿ������ݵ���ʽ
% y ��- ʵ��. ��< С�ں�
% m �ϣ� ����o Բs ������
% c ��-. �㻮��x ���d ����
% r ��- - ����+ �Ӻ�h ������
% g ��* �Ǻ�p �����
% b ��v ����������
% w ��^ ����������
% k ��> ���ں�
% ��5.1.2 ͼ�����κ�����
% ��������
% grid on (/off) ����ǰͼ�α����ӣ�ȡ��������
% xlable(��string��) ��Ǻ�����
% ylabel(��string��) ���������
% title(��string��) ��ͼ����ӱ���
% text(x,y,��string��) ��ͼ�ε�����λ������˵�����ı���Ϣ
% gtext(��string��) ����������˵�����ı���Ϣ
% axis([xmin xmax ymin ymax]) �������������С���ֵ
% 5.1.3 ͼ�εıȽ���ʾ
% ��һ��Ĭ�ϵ�����£�MATLAB ÿ��ʹ��plot ��������ͼ�λ��ƣ������²���һ��ͼ
% �δ��ڡ�����ʱϣ��������ͼ���ܹ���ǰ�������Ƶ�ͼ�ν��бȽϡ�һ����˵�����ַ���
% һ�ǲ���hold on(/off)������²�����ͼ�����ߵ��ӵ����е�ͼ���ϣ����ǲ���
% subplot(m,n,k)��������ͼ�δ��ڷָ���n m�� ����ͼ����ѡ���k ����ͼ��Ϊ��ǰͼ��
% ��Ȼ����ͬһ����ͼ�����л������Сͼ�Ρ�
% % >> y4=log(x);
% % >> plot(x,y1,x,y2)
% % >> hold on
% % >> plot(x,y3)
% % >> plot(x,y4)
% % >> hold off
% >> subplot(2,2,1);
% >> plot(x,y1);
% >> subplot(2,2,2);
% >> plot(x,y2);


% h=plot(a,b,'k-o','Markersize',7,'Markerface','white','linewidth',1.0);
% XLabel('a','fontsize',10)
% YLabel('b','fontsize',10)
% Legend('a','b',0)
% hh=findobj('tag','legend')    %|
% set(hh,'fontsize',10)         %| ����legend�ֺŴ�С
% set(h,'LineWidth',1.0);       %| ����ͼ���߿�
% set(gca,'linewidth',1.5)      %| ����ͼ����߿���߿�1.5
% set(gca,'box','off')          %| ȥͼ�����
% %| �����������ֺ�12 ��б�壬��
% set(gca,'fontsize',12,'fontweight','normal','fontangle','italic')
% %| ����x��labal����Ϊб��,���壬�ֺ�12
% set(get(gca,'xlabel'),'fontangle','italic','fontweight','bold',
% 'fontsize',12)
% %| ����y��labal����Ϊб�壬�Ǻ��壬�ֺ�12
% set(get(gca,'ylabel'),'fontangle','italic','fontweight','normal',
% 'fontsize',12)

