function x=Radix_sort(x,k)
%  函数功能：对整型数组x进行radix sort
%  算法导论 8.3
%  T(n)=O(d(n+k))
%  其中n为x数组的长度；k为用户定义，可理解为将数字分解为k进制形式，也可以认为将数字
%  分解成log2(k) bits的，默认k=16；假设x为b bits的，则d=ceil(b/log2(k))。

%  检测用户是否输入k，若没有则默认k=16
if (nargin == 1)
    k=16;
end
%  记录x的行列数并将其按列排序
rim=size(x);
x=x(:);
%  将数组x分解成d digits，k进制形式
[xdgt,n,d]=array2digit(x,k);
%  加1是为了后面检测是否非负数；避免counting sort中出现0
xdgt=xdgt+1;
index=[1:n]';
for i=d:-1:2
    index=index(CountingSort4Indices(xdgt(index,i),n,k));
end
%  逻辑变量pos，储存非负数的位置
pos=(xdgt(index,1) >= 1);
%  负数放在前面
x=[x(flipud(index(logical(1-pos))));x(index(pos))];
x=reshape(x,rim);


    