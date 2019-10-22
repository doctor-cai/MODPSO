karete_pf_data = load('ParetoFront.txt');
acf = karete_pf_data(:,1);
cs = karete_pf_data(:,2);
plot(acf,cs,'r.');
