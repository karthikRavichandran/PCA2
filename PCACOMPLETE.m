% for loop=1:50
clear all
clc
numd=50;
z4=zeros(200,180,numd);
for loop=1:numd
z=imread(strcat(num2str(loop),'.','jpg'));

% z1=imread('2.jpg');
% z2=imread('3.jpg');
%  z3=imread('4.jpg');

z4(:,:,loop)=z(:,:,1);
end
% z4(:,:,2)=z1(:,:,1);
% z4(:,:,3)=z2(:,:,1);
% z4(:,:,4)=z3(:,:,1);
% z4(:,:,4)=z3(:,:,1);
% z4(:,:,1)=z(:,:,1);

X = reshape(z4,size(z4,1)*size(z4,2),numd);
coeff = princomp(X);
Itransformed = X*coeff;
Ipc2=zeros(200,180,numd);
for loop=1:numd
Ipc1 = reshape(Itransformed(:,loop),size(z4,1),size(z4,2));
Ipc2(:,:,loop)=Ipc1;
end
% Ipc2 = reshape(Itransformed(:,2),size(z4,1),size(z4,2));
% Ipc3 = reshape(Itransformed(:,3),size(z4,1),size(z4,2));
% Ipc4= reshape(Itransformed(:,4),size(z4,1),size(z4,2));
for loop=1:numd
    figure(1),imshow(Ipc2(:,:,loop))
    
% figure, imshow(Ipc1,[]);
% figure, imshow(Ipc2,[]);
% figure, imshow(Ipc3,[]);
% figure, imshow(Ipc4,[]);
end
% A = xlsread('target.xlsx');
