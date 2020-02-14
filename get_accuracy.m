correct = 0;
for i=1:10000
    num = infer(centred_images(i,:), w1,b1,mean1,inv_std1,gamma1,beta1, w2,b2,mean2,inv_std2,gamma2,beta2, w3,b3,mean3,inv_std3,gamma3,beta3, w4,b4,mean4,inv_std4,gamma4,beta4);
    if (num == labels(i))
        correct = correct+1;
    end
end

accuracy = (correct/10000)*100