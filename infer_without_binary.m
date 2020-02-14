function [num] = infer_without_binary(input_image, arr0,b1,mean1,inv_std1,gamma1,beta1, arr1,b2,mean2,inv_std2,gamma2,beta2, arr2,b3,mean3,inv_std3,gamma3,beta3, arr3,b4,mean4,inv_std4,gamma4,beta4)

%Layer 1
l1 = input_image*arr0;
l1 = transpose(l1);
l1 = l1 + b1;
l1 = l1-mean1;
l1 = l1.*inv_std1;
l1 = l1.*gamma1;
l1 = l1+beta1;
l2 = l1;

%Layer 2
l2 = transpose(l2);
l2 = l2*arr1;
l2 = transpose(l2);
l2 = l2+b2;
l2 = l2-mean2;
l2 = l2.*inv_std2;
l2 = l2.*gamma2;
l2 = l2+beta2;
l3 = l2;

%Layer 3
l3 = transpose(l3);
l3 = l3*arr2;
l3 = transpose(l3);
l3 = l3 + b3;
l3 = l3-mean3;
l3 = l3.*inv_std3;
l3 = l3.*gamma3;
l3 = l3 + beta3;
l4 = l3;

%Layer 4
l4 = transpose(l4);
l4 = l4*arr3;
l4 = transpose(l4);
l4 = l4+b4;
l4 = l4-mean4;
l4 = l4.*inv_std4;
l4 = l4.*gamma4;
l4 = l4+beta4;

[~, num] = max(l4); 
num = num-1;
