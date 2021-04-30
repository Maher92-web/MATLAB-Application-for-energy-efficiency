clc
clear all
close all

parametr={['Room length'],['Room width'],['Luminaires length'],['Luminaires width'],...
    ['Luminous flux'],['Maintenance factor'],['Room efficiency'],...
    ['SC(along)'],['SC(across)'],['SC(45)'],['Luminaires cost']};

choice=menu('choose a parametr:','Room length','Room width'...
,'Luminaires length','Luminaires width','Luminous flux'...
,'Maintenance factor','Room efficiency','SC(along)','SC(across)','SC(45)','Luminaires cost')
%disp('your choice is : ')
%disp(parametr{choice})
L=input('please input room length =  ');

choice=menu('choose a parametr:','Room width'...
,'Luminaires length','Luminaires width','Luminous flux'...
,'Maintenance factor','Room efficiency','SC(along)','SC(across)','SC(45)','Luminaires cost')
%disp('your choice is : ')
%disp(parametr{choice})
W=input('please input room width =  ');

choice=menu('choose a parametr:','Luminaires length','Luminaires width','Luminous flux'...
,'Maintenance factor','Room efficiency','SC(along)','SC(across)','SC(45)','Luminaires cost')
% disp('your choice is : ')
% disp(parametr{choice})
x=input('please input Luminaires length =  ');

choice=menu('choose a parametr:','Luminaires width','Luminous flux'...
,'Maintenance factor','Room efficiency','SC(along)','SC(across)','SC(45)','Luminaires cost')
% disp('your choice is : ')
% disp(parametr{choice})
y=input('please input Luminaires width=  ');

choice=menu('choose a parametr:','Luminous flux'...
,'Maintenance factor','Room efficiency','SC(along)','SC(across)','SC(45)','Luminaires cost')
%     disp('your choice is : ')
% disp(parametr{choice})
lm1=input('please input Luminous flux =  ');

choice=menu('choose a parametr:','Maintenance factor','Room efficiency','SC(along)','SC(across)','SC(45)','Luminaires cost')
%     disp('your choice is : ')
% disp(parametr{choice})
Mf=input('please input Maintenance factor =  ');

choice=menu('choose a parametr :','Room efficiency','SC(along)','SC(across)','SC(45)','Luminaires cost')
% disp('your choice is : ')
% disp(parametr{choice})
nR=input('please input Room efficiency= ')


choice=menu('choose a parametr:','SC(along)','SC(across)','SC(45)','Luminaires cost')
% disp('your choice is : ')
% disp(parametr{choice})
sc1=input('please input SC(along)= ')

choice=menu('choose a parametr:','SC(across)','SC(45)','Luminaires cost')
% disp('your choice is : ')
% disp(parametr{choice})
sc2=input('please input SC(across) =  ');

choice=menu('choose a parametr:','SC(45)','Luminaires cost')
% disp('your choice is : ')
% disp(parametr{choice})
sc3=input('please input SC(45) =  ');

choice=menu('choose a parametr:','Luminaires cost')
% disp('your choice is : ')
% disp(parametr{choice})
cost=input('please input orib sc =  ');


E=500;%Illuminance
 lm=3*lm1;%'Luminaires quantity'
     lmt=(E*W*L)/(nR*Mf);
     n1=lmt/lm;
     a1=sqrt((n1*W)/L);
     a=ceil(a1)
     
     b1=n1/a;
     b=ceil(b1)
     H=3;
     hc=0;%›«’·Â ?—«€ «“ ”ﬁ›
     hf=.75;
     MS=.8*(H-hc);
     dl=(L-a*x)/a
     dw=(W-b*y)/b 
     X=dl+x;
     Y=dw+y;
     Z=sqrt(X^2+Y^2);
     if ((X/MS)<sc1) && ((Y/MS)<sc2) && ((Z/MS)<sc3)
         
     COST=a*b*cost
     else
         COST=inf
     end
     