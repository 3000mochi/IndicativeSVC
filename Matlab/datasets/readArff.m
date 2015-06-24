fid=fopen('ecoli2.dat');
header=12;
delimiter=',';
format='%f %f %f %f %f %f %f %s';
data=textscan(fid,format,'Delimiter',delimiter,'HeaderLines',header);
X=[data{1} data{2} data{3} data{4} data{5} data{6} data{7}];
N=size(X,1);
lab = ones(N,1);
lab(strcmp(data{end},'negative'))=0;
lab(strcmp(data{end},'positive'))=1;
y=lab;
data.X=X;
data.y=y;
save('ecoli2-all.mat','data');