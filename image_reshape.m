img = zeros(28,28);
k=1;
for i=1:28
    for j=1:28
        img(i,j)=input_images(9,k);
        k = k+1;
    end
end
%img = transpose(img);