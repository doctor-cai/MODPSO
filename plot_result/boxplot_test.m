figure(1)
%DPSO
karate_LPAQ1 = load('LPA-karate1.txt');
karate_LPAQ2 = load('LPA-karate2.txt');
karate_LPAQ3 = load('LPA-karate3.txt');
karate_LPAQ4 = load('LPA-karate4.txt');
karate_LPAQ5 = load('LPA-karate5.txt');
karate_LPAQ6 = load('LPA-karate6.txt');
karate_LPAQ7 = load('LPA-karate7.txt');
karate_LPAQ8 = load('LPA-karate8.txt');
karate_LPAQ9 = load('LPA-karate9.txt');
karate_LPAQ10 = load('LPA-karate10.txt');

karate_LPAQ = zeros(10,50);
karate_LPAQ(1,:) = karate_LPAQ1;
karate_LPAQ(2,:) = karate_LPAQ2;
karate_LPAQ(3,:) = karate_LPAQ3;
karate_LPAQ(4,:) = karate_LPAQ4;
karate_LPAQ(5,:) = karate_LPAQ5;
karate_LPAQ(6,:) = karate_LPAQ6;
karate_LPAQ(7,:) = karate_LPAQ7;
karate_LPAQ(8,:) = karate_LPAQ8;
karate_LPAQ(9,:) = karate_LPAQ9;
karate_LPAQ(10,:) = karate_LPAQ10;

karate_randQ1 = load('rand-karate1.txt');
karate_randQ2 = load('rand-karate2.txt');
karate_randQ3 = load('rand-karate3.txt');
karate_randQ4 = load('rand-karate4.txt');
karate_randQ5 = load('rand-karate5.txt');
karate_randQ6 = load('rand-karate6.txt');
karate_randQ7 = load('rand-karate7.txt');
karate_randQ8 = load('rand-karate8.txt');
karate_randQ9 = load('rand-karate9.txt');
karate_randQ10 = load('rand-karate10.txt');

karate_randQ = zeros(10,50);
karate_randQ(1,:) = karate_randQ1;
karate_randQ(2,:) = karate_randQ2;
karate_randQ(3,:) = karate_randQ3;
karate_randQ(4,:) = karate_randQ4;
karate_randQ(5,:) = karate_randQ5;
karate_randQ(6,:) = karate_randQ6;
karate_randQ(7,:) = karate_randQ7;
karate_randQ(8,:) = karate_randQ8;
karate_randQ(9,:) = karate_randQ9;
karate_randQ(10,:) = karate_randQ10;

karate_MemenetQ = zeros(10,50);
karate_MemenetQ(1,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(2,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(3,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(4,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(5,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(6,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(7,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(8,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(9,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(10,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
subplot(3,3,1);
boxplot([karate_randQ(1,:)',karate_LPAQ(1,:)',karate_MemenetQ(1,:)'],1);
ylabel('Modularity');set(gca,'fontsize',12);
subplot(3,3,2);
boxplot([karate_randQ(2,:)',karate_LPAQ(2,:)',karate_MemenetQ(2,:)'],1);set(gca,'fontsize',12);
subplot(3,3,3);
boxplot([karate_randQ(3,:)',karate_LPAQ(3,:)',karate_MemenetQ(3,:)'],1);set(gca,'fontsize',12);
subplot(3,3,4);
boxplot([karate_randQ(4,:)',karate_LPAQ(4,:)',karate_MemenetQ(4,:)'],1);set(gca,'fontsize',12);
subplot(3,3,5);
boxplot([karate_randQ(5,:)',karate_LPAQ(5,:)',karate_MemenetQ(5,:)'],1);set(gca,'fontsize',12);
subplot(3,3,6);
boxplot([karate_randQ(6,:)',karate_LPAQ(6,:)',karate_MemenetQ(6,:)'],1);set(gca,'fontsize',12);
subplot(3,3,7);
boxplot([karate_randQ(7,:)',karate_LPAQ(7,:)',karate_MemenetQ(7,:)'],1);set(gca,'fontsize',12);
subplot(3,3,8);
boxplot([karate_randQ(8,:)',karate_LPAQ(8,:)',karate_MemenetQ(8,:)'],1);set(gca,'fontsize',12);
subplot(3,3,9);
boxplot([karate_randQ(9,:)',karate_LPAQ(9,:)',karate_MemenetQ(9,:)'],1);%ylabel('Modularity');
% %set(get(gca,'ylabel'),'fontsize',12);
% set(gca,'XTickLabel',{'random','LP'})
set(gca,'fontsize',12);

figure(2)
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

netscience_LPAQ = zeros(10,50);
netscience_LPAQ(1,:) = a0_with;
netscience_LPAQ(2,:) = a1_with;
netscience_LPAQ(3,:) = a2_with;
netscience_LPAQ(4,:) = a3_with;
netscience_LPAQ(5,:) = a4_with;
netscience_LPAQ(6,:) = a5_with;
netscience_LPAQ(7,:) = a6_with;
netscience_LPAQ(8,:) = a7_with;
netscience_LPAQ(9,:) = a8_with;
netscience_LPAQ(10,:) = a9_with;

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

netscience_randQ = zeros(10,50);
netscience_randQ(1,:) = b0_no;
netscience_randQ(2,:) = b1_no;
netscience_randQ(3,:) = b2_no;
netscience_randQ(4,:) = b3_no;
netscience_randQ(5,:) = b4_no;
netscience_randQ(6,:) = b5_no;
netscience_randQ(7,:) = b6_no;
netscience_randQ(8,:) = b7_no;
netscience_randQ(9,:) = b8_no;
netscience_randQ(10,:) = b9_no;

subplot(3,3,1);
boxplot([netscience_randQ(1,:)',netscience_LPAQ(1,:)']);
ylabel('Modularity');set(gca,'fontsize',12);
subplot(3,3,2);
boxplot([netscience_randQ(2,:)',netscience_LPAQ(2,:)']);set(gca,'fontsize',12);
subplot(3,3,3);
boxplot([netscience_randQ(3,:)',netscience_LPAQ(3,:)']);set(gca,'fontsize',12);
subplot(3,3,4);
boxplot([netscience_randQ(4,:)',netscience_LPAQ(4,:)'],1);set(gca,'fontsize',12);
subplot(3,3,5);
boxplot([netscience_randQ(5,:)',netscience_LPAQ(5,:)'],1);set(gca,'fontsize',12);
subplot(3,3,6);
boxplot([netscience_randQ(6,:)',netscience_LPAQ(6,:)'],1);set(gca,'fontsize',12);
subplot(3,3,7);
boxplot([netscience_randQ(7,:)',netscience_LPAQ(7,:)'],1);set(gca,'fontsize',12);
subplot(3,3,8);
boxplot([netscience_randQ(8,:)',netscience_LPAQ(8,:)'],1);set(gca,'fontsize',12);
subplot(3,3,9);
boxplot([netscience_randQ(9,:)',netscience_LPAQ(9,:)'],1);set(gca,'fontsize',12);
% %set(get(gca,'ylabel'),'fontsize',12);
% set(gca,'XTickLabel',{'random','LP'})
% set(gca,'linewidth',2.0);


figure(3)
%DPSO
karate_LPAQ1 = load('LPA-karate1.txt');
karate_LPAQ2 = load('LPA-karate2.txt');
karate_LPAQ3 = load('LPA-karate3.txt');
karate_LPAQ4 = load('LPA-karate4.txt');
karate_LPAQ5 = load('LPA-karate5.txt');
karate_LPAQ6 = load('LPA-karate6.txt');
karate_LPAQ7 = load('LPA-karate7.txt');
karate_LPAQ8 = load('LPA-karate8.txt');
karate_LPAQ9 = load('LPA-karate9.txt');
karate_LPAQ10 = load('LPA-karate10.txt');

karate_LPAQ = zeros(10,50);
karate_LPAQ(1,:) = karate_LPAQ1;
karate_LPAQ(2,:) = karate_LPAQ2;
karate_LPAQ(3,:) = karate_LPAQ3;
karate_LPAQ(4,:) = karate_LPAQ4;
karate_LPAQ(5,:) = karate_LPAQ5;
karate_LPAQ(6,:) = karate_LPAQ6;
karate_LPAQ(7,:) = karate_LPAQ7;
karate_LPAQ(8,:) = karate_LPAQ8;
karate_LPAQ(9,:) = karate_LPAQ9;
karate_LPAQ(10,:) = karate_LPAQ10;

karate_randQ1 = load('rand-karate1.txt');
karate_randQ2 = load('rand-karate2.txt');
karate_randQ3 = load('rand-karate3.txt');
karate_randQ4 = load('rand-karate4.txt');
karate_randQ5 = load('rand-karate5.txt');
karate_randQ6 = load('rand-karate6.txt');
karate_randQ7 = load('rand-karate7.txt');
karate_randQ8 = load('rand-karate8.txt');
karate_randQ9 = load('rand-karate9.txt');
karate_randQ10 = load('rand-karate10.txt');

karate_randQ = zeros(10,50);
karate_randQ(1,:) = karate_randQ1;
karate_randQ(2,:) = karate_randQ2;
karate_randQ(3,:) = karate_randQ3;
karate_randQ(4,:) = karate_randQ4;
karate_randQ(5,:) = karate_randQ5;
karate_randQ(6,:) = karate_randQ6;
karate_randQ(7,:) = karate_randQ7;
karate_randQ(8,:) = karate_randQ8;
karate_randQ(9,:) = karate_randQ9;
karate_randQ(10,:) = karate_randQ10;

karate_MemenetQ = zeros(10,50);
karate_MemenetQ(1,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(2,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(3,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(4,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(5,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(6,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(7,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(8,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(9,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];
karate_MemenetQ(10,:) = [0.2334 0.3905  0.3905 0.3905 0.3905 0.3905 0.3905 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.4020 0.402 0.4020];

boxplot([karate_randQ(:,50),karate_LPAQ(:,50),karate_MemenetQ(:,50)],1);
ylabel('Modularity');
set(get(gca,'ylabel'),'fontsize',12);
set(gca,'XTickLabel',{'random','LP','meme'});
gtext('DPSO+random','fontsize',12);
gtext('DPSO+LP','fontsize',12)
gtext('Meme-net+heuristic','fontsize',12);
set(gca,'fontsize',12);
set(gca,'linewidth',2.0);


figure(4)
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

netscience_LPAQ = zeros(10,50);
netscience_LPAQ(1,:) = a0_with;
netscience_LPAQ(2,:) = a1_with;
netscience_LPAQ(3,:) = a2_with;
netscience_LPAQ(4,:) = a3_with;
netscience_LPAQ(5,:) = a4_with;
netscience_LPAQ(6,:) = a5_with;
netscience_LPAQ(7,:) = a6_with;
netscience_LPAQ(8,:) = a7_with;
netscience_LPAQ(9,:) = a8_with;
netscience_LPAQ(10,:) = a9_with;

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

netscience_randQ = zeros(10,50);
netscience_randQ(1,:) = b0_no;
netscience_randQ(2,:) = b1_no;
netscience_randQ(3,:) = b2_no;
netscience_randQ(4,:) = b3_no;
netscience_randQ(5,:) = b4_no;
netscience_randQ(6,:) = b5_no;
netscience_randQ(7,:) = b6_no;
netscience_randQ(8,:) = b7_no;
netscience_randQ(9,:) = b8_no;
netscience_randQ(10,:) = b9_no;


% a=[netscience_randQ(:,50)' netscience_randQ(:,50)'];
% b=[netscience_LPAQ(:,50)' netscience_LPAQ(:,50)'];
a_rand=[0.904357 0.924752 0.924787 0.924788 0.925802 0.924904 0.916018 0.923361 0.922692 0.923365];
b_LPA=[0.928261 0.928407 0.927801 0.927931 0.928277 0.927701 0.925907 0.927248 0.927261 0.927283];
c_ga_net = [0.839375 0.858161 0.835715 0.844868 0.863383 0.861753 0.853352 0.846032 0.871065 0.871061];

boxplot([a',b',c_ga_net'],1);
% boxplot([netscience_randQ(:,50),netscience_LPAQ(:,50)],1);
ylabel('Modularity');
set(get(gca,'ylabel'),'fontsize',12);
set(gca,'XTickLabel',{'random','LP','meme'});
gtext('DPSO+random','fontsize',12);
gtext('DPSO+LP','fontsize',12);
gtext('GA-net','fontsize',12)
set(gca,'fontsize',12);
set(gca,'linewidth',2.0);
