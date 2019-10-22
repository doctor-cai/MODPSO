%不同算法在benchmark数据上的NMI
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

%MOPSO不同的初始化和变异的组合对NMI的影响
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

%MOPSO不同的niche对NMI的影响
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
% 在figure界面下 点击Insert 这时你会看到下拉选项，
% 选取legend选项，这样就会出现标记
% x=-pi:0.01:pi
% y1=sin(x);y2=cos(x);
% plot(x,y1,'r*:',x,y2,'g-o');
% legend('y1','y2')
% text(1,2,'y1') 

% 色彩字符颜色线型字符线型格式标记符号数据点形式标记符号数据点形式
% y 黄- 实线. 点< 小于号
% m 紫： 点线o 圆s 正方形
% c 青-. 点划线x 叉号d 菱形
% r 红- - 虚线+ 加号h 六角星
% g 绿* 星号p 五角星
% b 蓝v 向下三角形
% w 白^ 向上三角形
% k 黑> 大于号
% 表5.1.2 图形修饰函数表
% 函数含义
% grid on (/off) 给当前图形标记添加（取消）网络
% xlable(‘string’) 标记横坐标
% ylabel(‘string’) 标记纵坐标
% title(‘string’) 给图形添加标题
% text(x,y,’string’) 在图形的任意位置增加说明性文本信息
% gtext(‘string’) 利用鼠标添加说明性文本信息
% axis([xmin xmax ymin ymax]) 设置坐标轴的最小最大值
% 5.1.3 图形的比较显示
% 在一般默认的情况下，MATLAB 每次使用plot 函数进行图形绘制，将重新产生一个图
% 形窗口。但有时希望后续的图形能够和前面所绘制的图形进行比较。一般来说有两种方法
% 一是采用hold on(/off)命令，将新产生的图形曲线叠加到已有的图形上；二是采用
% subplot(m,n,k)函数，将图形窗口分隔成n m× 个子图，并选择第k 个子图作为当前图形
% ，然后在同一个视图窗口中画出多个小图形。
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
% set(hh,'fontsize',10)         %| 设置legend字号大小
% set(h,'LineWidth',1.0);       %| 设置图形线宽
% set(gca,'linewidth',1.5)      %| 设置图形外边框的线宽1.5
% set(gca,'box','off')          %| 去图形外筐
% %| 设置坐标轴字号12 ，斜体，正
% set(gca,'fontsize',12,'fontweight','normal','fontangle','italic')
% %| 设置x轴labal字体为斜体,黑体，字号12
% set(get(gca,'xlabel'),'fontangle','italic','fontweight','bold',
% 'fontsize',12)
% %| 设置y轴labal字体为斜体，非黑体，字号12
% set(get(gca,'ylabel'),'fontangle','italic','fontweight','normal',
% 'fontsize',12)

