function A=DHEAP_INCREASE_KEY(A,i,key,d)
%  �������ܣ�����max d-ary heap�У�A��i����keyֵ��
if A(i) > key
    return
end
while (i > 1 && A(PARENT(i,d)) < key)
    A(i)=A(PARENT(i,d));
    i=PARENT(i,d);
end
A(i)=key;
    