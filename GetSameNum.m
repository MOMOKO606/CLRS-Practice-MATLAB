function p=GetSameNum(R,B,Rinx,Binx)
%  �������ܣ�ʵ��Match Red & Blue jugs����ѧģ�͡�
%  ��R��B������ͬ��Ԫ�أ�����ͬ��˳����R��Bֻ�ܻ���Ƚϣ������ҳ�R��B����ͬԪ�صĽǱꡣ
%  �㷨����Problems 8-4
%  T(n)=O(nlgn)
n=length(Rinx);
p=[];
if ( n < 1 )
    return
elseif ( n == 1 )
    p=[p;Rinx,Binx];
    return
else
    Bminus=[];
    Bplus=[];
    Rminus=[];
    Rplus=[];
    k=min(round(rand()*n)+1,n);
    r=Rinx(k);
    pivot=R(r);
    for i=1:n
        if ( B(Binx(i)) < pivot )
            Bminus=[Bminus,Binx(i)];
        elseif ( B(Binx(i)) > pivot )
            Bplus=[Bplus,Binx(i)];
        else
            b=Binx(i);
        end
    end
    for i=1:n
        if ( R(Rinx(i)) < pivot )
            Rminus=[Rminus,Rinx(i)];
        elseif ( R(Rinx(i)) > pivot )
            Rplus=[Rplus,Rinx(i)];
        end
    end
    pminus=GetSameNum(R,B,Rminus,Bminus);
    pplus=GetSameNum(R,B,Rplus,Bplus);
    p=[p;r,b;pminus;pplus];
end




