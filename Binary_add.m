function c=Binary_add(a,b)
%  二进制加法
%  算法导论 习题2.1-4
%  a,b中分别储存二进制的整数，a,b之和存入c中。
n=length(a);
flag=0;  %  flag表示是否有进位,0为无，1为有，初始值为0
for i=n:-1:1
    key=a(i)+b(i)+flag;
    c(i+1)=mod(key,2);
    if key > 1
        flag=1;
    else
        flag=0;
    end
end
c(1)=flag;
