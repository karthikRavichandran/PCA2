
tk1=zeros(36000,50);

for loop=1:50

img=strcat(num2str(loop),'.','jpg');
FDetect = vision.CascadeObjectDetector;
%Read the input image
I = imread(img);

% b=I;
% p=im2bw(b);
I = medfilt2(I);
[tempy,tempx]=size(I);
o=1;


tk= reshape(I,size(I,1)*size(I,2),1);
tk1(:,loop)=tk;
% o=1;
end

si=zeros(36000,1)
for i=1:36000
    si(i,1)=sum(tk1(i,:))/50;
end

for loop=1:50
    for p=1:36000
tk1(p,loop)=tk1(p,loop)-si(p,1);
    end
end

% C=tt
C=zeros(50,50);
% Ipc1 = reshape(Itran(:,loop),size(z4,1),size(z4,2));
Ipc1 = reshape(tk1(:,30),size(I,1),size(I,2));
sum1=zeros(36000,50);
for l=1:50
    for k=1:50
        sum1(:,l)=coeff(l,k)*tk1(:,k)+sum1(:,l);
    end
end
w=zeros(50,1);
omega=zeros(50,50);
for l=1:50
    
for k=1:50
    temp=sum1(:,k);
    w(k,1)=temp'*tk1(:,l);
end
omega(:,l)=w(:,1);
end
% num = xlsread('target.xlsx');
num = xlsread('traget.xlsx');

