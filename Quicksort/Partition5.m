function [A,q]=Partition(A,p,r)
%  Quicksort���ӳ����������ǡ����顱
%  T(n)=��(n)
%  ����˿�ʼ���֣�
%  Ϊ�˷�ֹ��A��������Ԫ�����ʱ����q=r��worst case��������pivot��Ԫ��
%  ����ط���pivot���ߵ�λ�á�
pivot=A(p);
i=p;
flag=1;
for j=p+1:r
    if ( A(j) < pivot )
        i=i+1;
        [A(i),A(j)]=Exchange(A(i),A(j));
    elseif ( A(j) == pivot )
        flag=flag+1;
        if( mod(flag,2) ) 
            i=i+1;
            [A(i),A(j)]=Exchange(A(i),A(j));
        end
    end
end
q=i;
[A(p),A(q)]=Exchange(A(p),A(q));
        
        