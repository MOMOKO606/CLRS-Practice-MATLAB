function A=MAX_DHEAPIFY(A,i,d,n)
%  函数功能：使d-ary heap A的i结点及其子结点保持最大堆性质（max-heap property）。
%  采用递归算法。
%  T（n）=O(dlogdn)
index=CHILDREN(i,d);
if i > n
    return
end
largest=A(i);
largesti=i;
for j=1:d
    if index(j) > n
        break
    end
    if (A(index(j)) > largest)
        largest=A(index(j));
        largesti=index(j);
    end
end
if largesti ~= i
    temp=A(i);
    A(i)=A(largesti);
    A(largesti)=temp;
    A=MAX_DHEAPIFY(A,largesti,d,n);
end