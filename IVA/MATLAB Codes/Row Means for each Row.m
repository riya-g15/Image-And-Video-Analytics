%Asking the user to input values for m*n
i= input ('Hey User! \n Enter value for number of rows you want \n in your matrix : ');
j= input ('Enter value for number of columns you want \n in your matrix : ');

%Generating a random matrix of m*n given by user
k=rand(i,j);
[m,n]=size(k);

% loop to iterate in rows and inside in columns
for i=1:m
    sum=0;
    SUM=double(sum);
    for j=1:n
        SUM= SUM+double(im(i,j));
    end
    %Dividing by values in each row i.e n
    rowmean = SUM/double(n);
    fprintf('Row %d Mean = %d\n',i,rowmean);
end