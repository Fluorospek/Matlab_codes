clc;
clear all;

f=@(x) x^2-29;
a=0;
b=5;
tol=10^-2;
if f(a)*f(b)>0
    disp('Wrong values of a and b');
else
    c=(a+b)/2;
    while abs(f(c))<tol
        if f(a)*f(c)<0
            b=c;
        else
            a=c;
        end
        c=(a+b)/2;
    end
    fprintf('Root is %f',c);
end


























% clc
% clear all
% 
% a = 1;
% b = 10;
% c = (a + b)/2;
% tol = 0.001;
% 
% %Important to give Domain
% x = 0:10;   % == 0:1:10 , means x's Range is from 0 to 10 in the gaps of 1. (0,1,2,..,10)
% f = @(x) x.^2-4.*x-2;
% % "." used on x since by using ":" operator, we have created
% % created an array/matrix (range) for x. And "." is used to 
% % execute operation on each and every element.
% % Basically, always use "." for these purposes (./array/matrix)
% 
% plot(x,f(x))    %plot(x-axis,y-axis)
% grid            %puts grids in graph
% 
% while abs(f(c))>tol
%     if f(a)*f(c)<0
%         b=c;
%     else
%         a=c;
%     end
%     c=(a+b)/2;
% end
% 
% fprintf('Root = %f',c)