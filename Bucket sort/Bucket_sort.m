function A=Bucket_sort(A)
%  �������ܣ�ʹ��Bucket sort����A����
%  �㷨���� 8.3
%  T(n)=��(n)
n=length(A);
para=0.75;
m=round(n/para);
%  ����˫��������ֵΪNaN
%  Bucket��Head��Last
%  Input��Prev��Next
Head=NaN(1,m);
Last=NaN(1,m);
Prev=NaN(1,n);
Next=NaN(1,n);
amax=max(A);
amin=min(A);
for i=1:n
    %  ��һ������p��ʾBucket�ı�ţ��ұ�֤��ŵ����ֵΪm��    
    p=min(floor(m*(A(i)-amin)/(amax-amin))+1,m);
    %  ����������ֲ�����Bucket��
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
        %  ע�⣬InseSort4LL������ı������ָ�򣬶���ֱ�ӵ�����input�����˳��  
        %  ���磬������2 -> 8����x(8)С��x(2)��
        %  ���ǲ��Ὣ�������Ϊ8 -> 2������ֱ��x(8)��x(2)exchange��
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
            
        

