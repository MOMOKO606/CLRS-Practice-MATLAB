function [x,C]=Countstr(x,p,q,col)
%  函数功能：有存放小写a到z（包括空格）的字符数组x，对x的第col列，x[p,...q]使用counting sort排序。
%  输出参数：
%  x为排序好的字符数组；
%  C为统计每个字母对应x中有多少个元素的统计数组，即C(1),C(2),...,C(27)分别表示
%  输入数组中，有C(1)个空格,有C(2)个a,...,有C(27)个z。

n=q-p+1;
%  将输入数组x的第p到q行，第col列取出，转换为ASCII码，并令其范围在[1,27]
A=abs(x((p:q),col))-95;
neg=(A < 0);
A(neg)=1;  %  令空字符的值为1
B=zeros(1,27);
for i=1:n
    B(A(i))=B(A(i))+1;
end
%  如果要排序的字符串中只有空格，则终止函数，返回空C
if ( (length(B) == 1) && (B(1) ~= 0) )
    C=[];
    return
end  
C=B(B > 0); %  把等于0的元素去掉
for i=2:27
    B(i)=B(i)+B(i-1);
end
for i=n:-1:1
    Index(B(A(i)))=i;
    B(A(i))=B(A(i))-1;
end
%  排序x[p,...,q]
t=[p:q];
x(t,:)=x(t(Index),:);
