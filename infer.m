function [num] = infer(input_image, w1,b1,mean1,inv_std1,gamma1,beta1, w2,b2,mean2,inv_std2,gamma2,beta2, w3,b3,mean3,inv_std3,gamma3,beta3, w4,b4,mean4,inv_std4,gamma4,beta4)

%Layer 1
l1 = input_image*w1;
l1 = transpose(l1);
l1 = l1 + b1;
l1 = l1-mean1;
l1 = l1.*inv_std1;
l1 = l1.*gamma1;
l1 = l1+beta1;
l2 = binarize(l1);

%Layer 2
l2 = transpose(l2);
l2 = l2*w2;
l2 = transpose(l2);
l2 = l2+b2;
l2 = l2-mean2;
l2 = l2.*inv_std2;
l2 = l2.*gamma2;
l2 = l2+beta2;
l3 = binarize(l2);

%Layer 3
l3 = transpose(l3);
l3 = l3*w3;
l3 = transpose(l3);
l3 = l3 + b3;
l3 = l3-mean3;
l3 = l3.*inv_std3;
l3 = l3.*gamma3;
l3 = l3 + beta3;
l4 = binarize(l3);

%Layer 4
l4 = transpose(l4);
l4 = l4*w4;
l4 = transpose(l4);
l4 = l4+b4;
l4 = l4-mean4;
l4 = l4.*inv_std4;
l4 = l4.*gamma4;
l4 = l4+beta4;

[~, num] = max(l4); 
num = num-1;

