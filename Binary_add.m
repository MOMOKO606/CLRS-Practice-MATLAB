function c=Binary_add(a,b)
%  �����Ƽӷ�
%  �㷨���� ϰ��2.1-4
%  a,b�зֱ𴢴�����Ƶ�������a,b֮�ʹ���c�С�
n=length(a);
flag=0;  %  flag��ʾ�Ƿ��н�λ,0Ϊ�ޣ�1Ϊ�У���ʼֵΪ0
for i=n:-1:1
    key=a(i)+b(i)+flag;
    c(i+1)=mod(key,2);
    if key > 1
        flag=1;
    else
        flag=0;
    end
end
c(1)=flag;
