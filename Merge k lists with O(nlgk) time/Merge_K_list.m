function R=Merge_K_list(k,n,varargin)
%  函数功能：通过min heap的算法，将k个从小到大排序好的数组合并排列成1个数组（总共有n个数）。
%  varargin为要合并的全部数组，每个数组的长度任意。
%  T（n）=O（nlgk）

%  整理输入数组，T(n)=O(k)
%  将输入数组存放到K_1，K_2，。。。，K_k中，T(n)=O(k)
for i=1:k
    array=varargin{i};
    eval(['K_',num2str(i),'=array;'])
end
%  对heap A赋初值，T(n)=O(k)
%  将K_1到K_k 数组的第一个值（最小值）放入heap A的第1列中，即为A的key；
%  heap A的第2列表示对应的key来自哪个数组；
%  qi表示第i个数组的第qi元素即将插入heap A中。
for i=1:k
    str=eval(['K_',num2str(i)]);
    A(i,1)=str(1);
    A(i,2)=i;
    eval(['q',num2str(i),'=2;'])
end
%  使heap A变为Min heap,T(n)=O(k)
A=BUILD_MIN_HEAP_2col(A);
for i=1:n
    %  取出heap顶端的最小值，存入结果数组中，T（n）=O(lgk)
    [A,Min,MinI]=HEAP_EXTRACT_MIN_2col(A);
    R(i)=Min;
    %  找到被extract的node对应的数组，将该数组中的下一个元素插入到heap A中   
    str=eval(['K_',num2str(MinI)]);
    q=length(str);
    j=eval(['q',num2str(MinI)]);
    %  如果该数组已经没有元素，则不执行插入操作
    if ( j <= q)
        key=str(j);
        %  插入新元素到heap A，T（n）=O(lgk)
        A=MIN_HEAP_INSERT_2col(A,key,MinI);
        j=j+1;
        eval(['q',num2str(MinI),'=',num2str(j),';'])     
    end
end    