if true
row=1280;  col=960;
Ki = 1;
close all

fin=fopen('18_12_59_4_543_0.raw','r');
I=fread(fin,row*col,'uint8=>uint8'); 
%status=fclose(fin);
 R=reshape(I,row,col);
 R=R';
 figure, k=imshow(Ki*R);
 
s1=im2bw(R,16/255); % im2bw函数需要将灰度值转换到[0,1]范围内
 figure,imshow(s1);
 
 

num=sum(sum(R==16));
figure,imhist(R);  
%imshow(s)
%%num=sum(sum(s1>0));
% s1=im2bw(s,200/255); % im2bw函数需要将灰度值转换到[0,1]范围内
% figure,imshow(s1);
 
 
 
%  fin=fopen('binning2.raw','r');
% J=fread(fin,row*col,'uint8=>uint8'); 
% %status=fclose(fin);
%  P=reshape(J,row,col);
%  P=P';
%  figure, k=imshow(Ki*P)
 
 
 
 
 
 
%  
%   fin=fopen('Python_72M.raw','r');
% M=fread(fin,row*col,'uint8=>uint8'); 
% %status=fclose(fin);
%  M=reshape(I,row,col);
%  M=M';
%  figure, k=imshow(Ki*M)
% 
% % 
% fin2=fopen('raw1.raw','r');
% J=fread(fin2,row*col,'uint8=>uint8'); 
% 
% R=reshape(J,row,col);
%  R=R';
%  figure, k=imshow(R)
% % status=fclose(fin2);
% 
%  S=imsubtract(I,J);
% figure, imshow(S);
% 
% Z=reshape(S,row,col);
% Z=Z';
% figure,imhist(Z); 
% figure,imshow(Z)
% Z1=im2bw(Z,1/255);
% figure,imhist(Z1);
% figure, k=imshow(Z1)

% 
% i=imread('05.bmp');
% j=imread('06.bmp');
% i1=rgb2gray(i);
% j1=rgb2gray(j);%%%%%%%%%%%%%%%%%%%灰度化
% s=imsubtract(j1,i1);
% num=sum(sum(s>200));
% %%%%s=imsubtract(j1,i1);
% imhist(s);  
% %imshow(s)
% %%num=sum(sum(s1>0));
% s1=im2bw(s,200/255); % im2bw函数需要将灰度值转换到[0,1]范围内
% figure,imshow(s1);



end