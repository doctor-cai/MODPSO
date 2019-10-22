% node=[34,62,105,118,1589];
% node1=[34,62,105,118];
% psoT=[0.0033976 0.02878 0.0368446 0.23561 0.298849];
% c1=plot(node',psoT,'-r*');
% hold on
% GAnetT=[0.763274 1.0355 1.368761 2.28257 45.391013];
% c2=plot(node',GAnetT,'-mv');
% MemeT=[0.455667 1.292639 36.552046 109.958445];
% c3=plot(node1',MemeT,'-bs');
% GNT=[0.090418 0.5029 6.970292 1.933909];
% c4=plot(node1',GNT,'-kp');
% 
% figure(1)
% node=[1589];
% node1=[34,62,105,118];
% psoT=[0.0033976 0.02878 0.0368446 0.23561];
% psoT1=[0.298849];
% c1=plot(node1',psoT,'-r*',node',psoT1,'-r*');
% hold on
% GAnetT=[0.763274 1.0355 1.368761 2.28257];
% GAnetT1=[45.391013];
% c2=plot(node1',GAnetT,'-gv',node',GAnetT1,'-gv');
% MemeT=[0.455667 1.292639 36.552046 109.958445];
% c3=plot(node1',MemeT,'-bs');
% GNT=[0.090418 0.5029 6.970292 1.933909];
% c4=plot(node1',GNT,'-kp');


% figure(2)
% x=0.2:0.1:0.6;
% Time = [264.534 196.061 272.097 78.478 93.019;
%                         635.586 958.436 360.231 349.138 248.720;
%                         134.395 131.305 129.629 124.971 129.388];
% a=Time';
% bar(x',a,'group');
% 
% xlabel('resolution');
% ylabel('costing time for algorithms to reach max D value (s)');
% legend('CSA-Net','Meme-Net','GACD');


figure(3)
% subplot(1,2,1);
data = [0.0033976,0.763274,0.455667,0.090418;0.02878,1.0355,1.292639,0.5029;0.0368446,1.368761,36.552046,6.970292;0.23561,2.282507,109.958445,1.933909];
b = bar(data,0.4);
ch = get(b,'children');
% axis xy;
% % set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 1 1;1 0 1]);
% % set(ch{1},'FaceVertexCData',[1;1;1;1;2;2;2;2;3;3;3;3;4;4;4;4]);
% % 
% % set(ch{2},'FaceVertexCData',[1;1;1;1;2;2;2;2;3;3;3;3;4;4;4;4]);
% % 
% % set(ch{3},'FaceVertexCData',[1;1;1;1;2;2;2;2;3;3;3;3;4;4;4;4]);
% % 
% % set(ch{4},'FaceVertexCData',[1;1;1;1;2;2;2;2;3;3;3;3;4;4;4;4]);

set(gca,'XTickLabel',{'karate','dolphins','football','SFI'})
legend('DPSOCD','GA-net','Meme-net','GN');
ylabel('The consuming time(seconds)');
set(gca,'linewidth',2.0);
% set(b,'linewidth',2.0);
hh=findobj('tag','legend') ;
hh1=findobj('gca','XTickLabel') ;
set(hh,'fontsize',12) ;
set(hh1,'fontsize',12) ;
set(gca,'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);

figure(4)
% subplot(1,2,2);
data1 = [12.98849 55.391013];
% box on
% b1 = bar(data1,'group');
b1 = bar(data1,0.1);
 set(gca,'XTickLabel',{'DPSOCD','GA-net'})
%ch = get(b1,'children');
% set(ch,'FaceVertexCData',[1 0 0;0 0 0]);
% legend('DPSOCD','GA-net');
ylabel('The consuming time(seconds)');
title('netscience network');
set(gca,'linewidth',2.0);
set(b1,'linewidth',2.0);
hh=findobj('tag','legend') ;
hh=findobj('tag','title') ;
set(hh,'fontsize',12) ;
set(gca,'fontsize',12);
% set(get(gca,'xlabel'),'fontsize',12);
set(get(gca,'ylabel'),'fontsize',12);


% 
% Y = randn(3,5);
% h = bar(Y);
% set(get(h(1),'BaseLine'),'LineWidth',2,'LineStyle',':')
% colormap summer % Change the color scheme

