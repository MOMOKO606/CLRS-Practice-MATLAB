function x=Get2ndmin(A)
%  �ҳ�A�����еڶ�С��Ԫ�� 
%  �㷨���� P215
%  T(n)=��(n+lgn-2)

A=A(:);
n=length(A);
m=n;
%  ���AԪ�ظ�������ż��ż����������
if (mod(n,2))
    extra=A(1);
    A=A(2:n);
    m=n-1;
end
%  ����tree��C
C=A;
%  BΪ�ɶԱȽϺ��С��Ԫ����ɵ�����
B=[];
while (~isempty(A))
    for i=1:2:m
        [s,l]=Compare(A(i),A(i+1));
        B=[B;s];
    end
    A=B;
    C=[B;C];
    m=m/2;
end
