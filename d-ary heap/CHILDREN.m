function index=CHILDREN(i,d)
%  �������ܣ�����һ��d-ary heap�У�i�ڵ㣨node����children�ڵ��λ�ã���ţ���
start=(i-1)*d+1;
for j=1:d
    index(j)=start+j;
end