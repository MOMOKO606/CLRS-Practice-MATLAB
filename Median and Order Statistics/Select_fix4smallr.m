function median=Select_fix4smallr(A,p,q,r)
%  ��Select�����޸ģ���Ҫ���rС��n/2ʱ��ʹ��comparison���ٵ��㷨
%  �㷨���� Problems 9-3

n=q-p+1;
%  �ж�n����ż
if ( mod(n,2) )
    flag=1;  %  nΪ����
else
    flag=0;  %  nΪż��
end
%  Ҫ�ҵ�r����n/2ʱֱ�ӵ���Select
leftm=(n-flag)/2;
if ( r > leftm )
    median=Select(A,p,q,r);
    return
end
%  ��A�ֳ����β��ɶԱȽϣ�С��Ԫ�طŵ�ǰ�벿�֣���ķŵ���벿��
for i=p:p+leftm-1
    j=i+(n+flag)/2;
    if ( A(i) > A(j) )
        [A(i),A(j)]=Exchange(A(i),A(j));
    end
end
%  ��ǰ�벿�ֵݹ�Ѱ�ҵ�rС��Ԫ��
pivot=Select(A,p,p+leftm-1,r);
v=Linear_search(A,pivot);
%  ���ǰ�벿�ֵ�index
index=[p:p+leftm-1];
%  ����A��Ϊ��Partition����index����
A=ArrayExchange(A,p,v);
index=ArrayExchange(index,p,v);
%  Χ��pivot��Partition
[index,r]=Partition_index(A,index,p,p+leftm-1);
if ( flag == 1 )
    t=p+leftm;
else
    t=[];
end
%  ����Partition�Ĳ������Ҳ�
index=[index,t,index+(n+flag)/2];
%  �ָ�A
A=ArrayExchange(A,p,v);
A=A(index);
%  ����������ǰrС��Ԫ��ȡ��������B��
if ( ~isempty(t) )
    t=A(p+leftm);
end
B=[A(p:r),t,A(p+(n+flag)/2:r+(n+flag)/2)];
%  ����Select��B���ҵ�rС��Ԫ��
median=Select(B,1,length(B),r);

    


    
