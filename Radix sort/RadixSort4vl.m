function x=RadixSort4vl(x,k)
%  Radix sort for variable-length item
%  �������ܣ��Բ�ͬdigit���������򣨰���0�븺������
%  ��ʵ�ϣ�MATLAB�����ṩת��bit�ȵͼ�������
%  Radix_sort������������ݴ�С����digit�����Ǹ����������ͻ���digit�ģ�����Raidx_sort
%  ����ֱ�ӶԲ�ͬλ��digit�������������򣬱�����ֻ�Ǵ��㷨�ϱ�ʾProblems 8-3a��
if (nargin == 1)
    k=16;
end
%  ��¼x�������������䰴������
rim=size(x);
x=x(:);
%  ������x�ֽ��d digits��k������ʽ
[xdgt,n,d]=array2digit(x,k);
%  ����ͳ����������x�и�Ԫ�ص�digits
%  ��ͳ�ƽ������C�У�C(1),...,C(d-1)�ֱ��ʾdigit=1��d-1��Ԫ�ظ�����
%  ����digit��С���󣬽�x��indices��������B�С�
%  A��ctΪͳ���õ���ʱ���顣
ct=xdgt;
index=[1:n]';
C=zeros(1,d-1);
B=[];
for i=2:d
    A=(ct(:,i) > 0);
    C(d-i+1)=length(index(A));
    B=[index(A);B];
    ct(index(A),[2:d])=NaN;
    if (i == d)  %  ����Ƿ���0���ڣ���������digit��Ϊ0����
        A=(ct(:,i) == 0);
        Res0=index(A);  %  ����0��Ԫ�ص�indices����Res0
    end
end
%  �ֱ�Է��������ݽ���radix sort
q=0;
Respos=[];  %  �������õķǸ�����indices
Resneg=[];  %  �������õĸ�����indices
for i=1:d-1
    if (C(i) > 0)
        outi=B(q+1:q+C(i));  %  ͨ��q��C����B�ϵĻ�����
        A=xdgt(outi,:)+1;  %  ��ÿ��Ԫ�ط���A�У�AΪ��ʱ�������飻��1��Ϊ�˱������0ʱcounting sort����
        Ai=(1:C(i))';  %  AiΪ��ʱ����A��indice
        %  �ɵ�λ����λRadix sort
        for j=d:-1:d-i+1
            Ai=Ai(CountingSort4Indices(A(Ai,j),C(i),k));
        end
        pos=(xdgt(outi(Ai),1) > 0);
        Respos=[Respos;outi(Ai(pos))];  %  ����õķǸ�����indices����Respos
        neg=(xdgt(outi(Ai),1) < 0);
        Resneg=[flipud(outi(Ai(neg)));Resneg];  %  ����õĸ�����indices����Resneg
        q=q+C(i);
    end
end
%  ����������x
x=x([Resneg;Res0;Respos]);
%  �ָ�����ʱ����״
x=reshape(x,rim);
    
    
    
    