function A=HEAP_DECREASE_KEY_2col(A,i,key)
%  �������ܣ���С��С�ѣ�min-heap���У�A��i����keyֵ��
%  A�еĵ�һ��Ϊkey���ڶ���Ϊkey��Ӧ��list�š�
%  T��n��=O(lgn)
if (key > A(i,1))
    error('new key is larger than current key')
end
index=A(i,2);
while (i > 1 && key < A(Parent(i),1))
    A(i,:)=A(Parent(i),:);
    i=Parent(i);
end
A(i,1)=key;
A(i,2)=index;