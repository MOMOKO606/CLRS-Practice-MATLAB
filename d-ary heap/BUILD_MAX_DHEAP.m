function A=BUILD_MAX_DHEAP(A,d,n)
%  �������ܣ���A��������Ϊmax d-ary heap�ṹ��
p=PARENT(n,d);
for i=p:-1:1
    A=MAX_DHEAPIFY(A,i,d,n);
end
