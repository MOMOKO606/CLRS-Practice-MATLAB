function [Index,q]=Partition_index(A,Index,p,r)
%  �޸ĵ�Partition�������������鲻���Ƿֺ����A���飬���Ƿֺ����A����Ľűꡣ
%  IndexΪ����A����Ľűꡣ

n=r-p+1;
pivot=A(p);
i=p;
for j=p+1:r
    if (A(j) < pivot)
        i=i+1;
        [Index(i),Index(j)]=Exchange(Index(i),Index(j));
    end
end
[Index(p),Index(i)]=Exchange(Index(p),Index(i));  
q=i;
