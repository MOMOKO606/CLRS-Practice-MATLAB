function x=InseSort4LL(x,Prev,Next,Head)
%  函数功能：Bucket sort的子程序，对双向链表内的元素进行插入排序
%  注意，InseSort4LL并不会改变链表的指向，而是直接调整其input数组的顺序  
%  例如，链表中2 -> 8，且x(8)小于x(2)：
%  我们不会将链表调整为8 -> 2，而是直接x(8)和x(2)exchange。
j=Next(Head);
while(~isnan(j))
    pivot=x(j);
    i=j;
    while(~isnan(Prev(i)) && (pivot < x(Prev(i))))
        x(i)=x(Prev(i));
        i=Prev(i);     
    end
    x(i)=pivot;
    j=Next(j);
end