function [output] = binarize(input)
a=size(input);
output=zeros(size(input));
for i=1:a(1,1)
    for j=1:a(1,2)
        if input(i,j)>0
            output(i,j)=1;
        else
            output(i,j)=-1;
        end
    end
end