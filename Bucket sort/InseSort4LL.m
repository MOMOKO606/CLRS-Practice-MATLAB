function x=InseSort4LL(x,Prev,Next,Head)
%  �������ܣ�Bucket sort���ӳ��򣬶�˫�������ڵ�Ԫ�ؽ��в�������
%  ע�⣬InseSort4LL������ı������ָ�򣬶���ֱ�ӵ�����input�����˳��  
%  ���磬������2 -> 8����x(8)С��x(2)��
%  ���ǲ��Ὣ�������Ϊ8 -> 2������ֱ��x(8)��x(2)exchange��
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