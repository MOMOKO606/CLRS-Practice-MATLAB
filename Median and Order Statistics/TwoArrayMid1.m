function x=TwoArrayMid1(A,ap,aq,B,bp,bq)
%  A[ap...aq]��B[bp...bq]Ϊ��������Ϊn������õ����飻
%  ��������:�����2n��������λ����
%  �㷨���� 9.3-8 P223
%  T(n)=O(lgn)  

n=aq-ap+1;
if ( bq-bp+1 ~= n )
    disp('���鳤�Ȳ�һ�£�');
    return
end
if ( n <= 1)
    if ( A(ap) < B(bp) ) 
        x=A(ap);
    else
        x=B(bp);
    end
    return
end
amid=ap+ceil(n/2)-1;
bmid=bp+ceil(n/2)-1;
if ( mod(n,2) )
    flag=0;  %  nΪ����
else
    flag=1;  %  nΪż��
end
if ( A(amid) > B(bmid) )
    if ( flag == 0 )
        if ( B(bmid) > A(aq-amid))
            x=B(bmid);
            return
        end
    else
        if ( B(bmid+1) > A(amid) )
            x=A(amid);
            return
        end
    end  
    x=TwoArrayMid1(A,ap,amid-1+flag,B,bmid+1,bq);
else
    if ( flag == 0)
        if ( A(amid) > B(bq-bmid) )
            x=A(amid);
            return
        end
    else
        if ( A(amid+1) > B(bmid) )
            x=B(bmid);
            return
        end
    end
    x=TwoArrayMid1(A,amid+1,aq,B,bp,bmid-1+flag);
end
    