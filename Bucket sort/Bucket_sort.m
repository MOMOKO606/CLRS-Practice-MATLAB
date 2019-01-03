function A=Bucket_sort(A)
%  函数功能：使用Bucket sort排序A数组
%  算法导论 8.3
%  T(n)=θ(n)
n=length(A);
para=0.75;
m=round(n/para);
%  定义双向链表，初值为NaN
%  Bucket有Head和Last
%  Input有Prev和Next
Head=NaN(1,m);
Last=NaN(1,m);
Prev=NaN(1,n);
Next=NaN(1,n);
amax=max(A);
amin=min(A);
for i=1:n
    %  归一化处理，p表示Bucket的标号，且保证标号的最大值为m。    
    p=min(floor(m*(A(i)-amin)/(amax-amin))+1,m);
    %  将输入数组分布到各Bucket中
    if isnan(Head(p))
        Head(p)=i;
    else
        Prev(i)=Last(p);
        Next(Last(p))=i;
    end
    Last(p)=i;
end
k=1;
for i=1:m
    if ~isnan(Head(i))
        %  Insertion sort for (doubly-)linked lists
        %  注意，InseSort4LL并不会改变链表的指向，而是直接调整其input数组的顺序  
        %  例如，链表中2 -> 8，且x(8)小于x(2)：
        %  我们不会将链表调整为8 -> 2，而是直接x(8)和x(2)exchange。
        A=InseSort4LL(A,Prev,Next,Head(i));
        q=Head(i);
        while (~isnan(q))
            indice(k)=q;
            q=Next(q);
            k=k+1;
        end
    end
end
A=A(indice);
            
        

