function x=SortingStr(x,p,q,col)
%  �������ܣ�ֻ��counting sort�ݹ����򳤶Ȳ�ͬ���ַ���������Сд��ĸa��z����
%  ˼�룺
%  ������ĸ�������ʣ���1λ��ĸС������string��С��
%  ���Ǵ����Ҷ�ÿһλ���У����򲢷��飬��ÿ�����һ�еݹ�����
%  ������colΪ������p,q��ʾx[p,...,q]��

if(p < q)
%  �Ե�col�У���p��q������
    [x,C]=Countstr(x,p,q,col);
%  ����C�������������ֳ�round�飬ÿ�鷶Χ��pnext��qnext
    round=length(C);
    pnext=p;
    qnext=p-1;
    for i=1:round
        qnext=qnext+C(i);
        x=SortingStr(x,pnext,qnext,col+1);
        pnext=qnext+1;
    end
end
