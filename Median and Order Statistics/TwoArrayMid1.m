function x=TwoArrayMid1(A,ap,aq,B,bp,bq)
%  A[ap...aq]与B[bp...bq]为两个长度为n，排序好的数组；
%  函数功能:求得这2n个数的中位数；
%  算法导论 9.3-8 P223
%  T(n)=O(lgn)  

n=aq-ap+1;
if ( bq-bp+1 ~= n )
    disp('数组长度不一致！');
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
    flag=0;  %  n为奇数
else
    flag=1;  %  n为偶数
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
    