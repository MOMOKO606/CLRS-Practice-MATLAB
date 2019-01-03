function x=RadixSort4vl(x,k)
%  Radix sort for variable-length item
%  函数功能：对不同digit的整数排序（包括0与负数）。
%  事实上，MATLAB并不提供转换bit等低级操作；
%  Radix_sort并不是针对数据大小划分digit，而是根据数据类型划分digit的，所以Raidx_sort
%  可以直接对不同位（digit）的数进行排序，本函数只是从算法上表示Problems 8-3a。
if (nargin == 1)
    k=16;
end
%  记录x的行列数并将其按列排序
rim=size(x);
x=x(:);
%  将数组x分解成d digits，k进制形式
[xdgt,n,d]=array2digit(x,k);
%  首先统计输入数组x中各元素的digits
%  将统计结果放入C中，C(1),...,C(d-1)分别表示digit=1到d-1的元素个数。
%  根据digit从小到大，将x的indices分组存放人B中。
%  A、ct为统计用的临时数组。
ct=xdgt;
index=[1:n]';
C=zeros(1,d-1);
B=[];
for i=2:d
    A=(ct(:,i) > 0);
    C(d-i+1)=length(index(A));
    B=[index(A);B];
    ct(index(A),[2:d])=NaN;
    if (i == d)  %  检测是否有0存在，即在所有digit都为0的数
        A=(ct(:,i) == 0);
        Res0=index(A);  %  等于0的元素的indices放入Res0
    end
end
%  分别对分组后的数据进行radix sort
q=0;
Respos=[];  %  存放排序好的非负数的indices
Resneg=[];  %  存放排序好的负数的indices
for i=1:d-1
    if (C(i) > 0)
        outi=B(q+1:q+C(i));  %  通过q和C建成B上的滑动窗
        A=xdgt(outi,:)+1;  %  将每组元素放入A中，A为临时计算数组；加1是为了避免出现0时counting sort出错。
        Ai=(1:C(i))';  %  Ai为临时数组A的indice
        %  由低位到高位Radix sort
        for j=d:-1:d-i+1
            Ai=Ai(CountingSort4Indices(A(Ai,j),C(i),k));
        end
        pos=(xdgt(outi(Ai),1) > 0);
        Respos=[Respos;outi(Ai(pos))];  %  排序好的非负数的indices放入Respos
        neg=(xdgt(outi(Ai),1) < 0);
        Resneg=[flipud(outi(Ai(neg)));Resneg];  %  排序好的负数的indices放入Resneg
        q=q+C(i);
    end
end
%  排序后的数组x
x=x([Resneg;Res0;Respos]);
%  恢复输入时的形状
x=reshape(x,rim);
    
    
    
    