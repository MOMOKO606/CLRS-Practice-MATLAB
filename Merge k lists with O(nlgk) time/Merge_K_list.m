function R=Merge_K_list(k,n,varargin)
%  �������ܣ�ͨ��min heap���㷨����k����С��������õ�����ϲ����г�1�����飨�ܹ���n��������
%  vararginΪҪ�ϲ���ȫ�����飬ÿ������ĳ������⡣
%  T��n��=O��nlgk��

%  �����������飬T(n)=O(k)
%  �����������ŵ�K_1��K_2����������K_k�У�T(n)=O(k)
for i=1:k
    array=varargin{i};
    eval(['K_',num2str(i),'=array;'])
end
%  ��heap A����ֵ��T(n)=O(k)
%  ��K_1��K_k ����ĵ�һ��ֵ����Сֵ������heap A�ĵ�1���У���ΪA��key��
%  heap A�ĵ�2�б�ʾ��Ӧ��key�����ĸ����飻
%  qi��ʾ��i������ĵ�qiԪ�ؼ�������heap A�С�
for i=1:k
    str=eval(['K_',num2str(i)]);
    A(i,1)=str(1);
    A(i,2)=i;
    eval(['q',num2str(i),'=2;'])
end
%  ʹheap A��ΪMin heap,T(n)=O(k)
A=BUILD_MIN_HEAP_2col(A);
for i=1:n
    %  ȡ��heap���˵���Сֵ�������������У�T��n��=O(lgk)
    [A,Min,MinI]=HEAP_EXTRACT_MIN_2col(A);
    R(i)=Min;
    %  �ҵ���extract��node��Ӧ�����飬���������е���һ��Ԫ�ز��뵽heap A��   
    str=eval(['K_',num2str(MinI)]);
    q=length(str);
    j=eval(['q',num2str(MinI)]);
    %  ����������Ѿ�û��Ԫ�أ���ִ�в������
    if ( j <= q)
        key=str(j);
        %  ������Ԫ�ص�heap A��T��n��=O(lgk)
        A=MIN_HEAP_INSERT_2col(A,key,MinI);
        j=j+1;
        eval(['q',num2str(MinI),'=',num2str(j),';'])     
    end
end    