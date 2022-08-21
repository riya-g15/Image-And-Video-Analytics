cm= rgb2gray(imread('cat.jpg')); 
[m,n] = size(cm);
crr=[];
arr=[];
visited=-1;
for i=1:m
    frequency = 1;
    k=1;
    for j=i+1:n
        if(cm(i,k)==cm(i,j))
            frequency = frequency+1;
            arr(j) = visited;
        end
    k=k+1;
    end
    if(arr(i)~=visited)
        crr(i)=cm(i,k);
        arr(i) = frequency;
    end    
end
for i=1:m
    for j=1:n
        if(arr(i)~=visited)
            fprintf('Pixel %d = %d ',cm(i,j),arr(i));
            fprintf('\n');
        end
    end
end