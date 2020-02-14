test_image_file = 't10k-images.idx3-ubyte';
test_labels_file = 't10k-labels.idx1-ubyte';

images = loadMNISTImages(test_image_file);
labels = loadMNISTLabels(test_labels_file);

images = transpose(images);

input_images = zeros(10000,784);
for z=1:10000
    img = zeros(28,28);
    k=1;
    for i=1:28
        for j=1:28
            img(i,j)=images(z,k);
            k = k+1;
        end
    end
    img = transpose(img);
    k=1;
    for i=1:28
        for j=1:28
            input_images(z,k)=img(i,j);
            k = k+1;
        end
    end
end
centred_images = 2.*input_images-1;