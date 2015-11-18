# Singular Value Decomposition
## m-Files Included
- lower_rank.m
- gray_image_matrix.m
- run_image_compress.m

## lower_rank.m
Format  ```[lowM,ornk,relerr] = lower_rank(M,irnk)```

This function inputs a matrix ```M``` and a positive integer ```irnk```  and returns the matrix ```lowM```, the positive integer ```ornk```, and the floating precision variable ```relerr```. For the input, ```M``` is the matrix we want to make a lower rank approximation of; ```irnk``` (input rank) is the rank we want to use for the approximation. For the output, ```lowM``` is the lower rank approximation of ```M``` of rank ```ornk```; we set ```ornk = max(1,min(irnk,rank(M)-1))``` to make sure the approximation is valid, if ```irnk``` is input meaningfully, then ```ornk``` and ```irnk``` agree	; and ```relerr``` is the relative error of the lower rank approximation compared to the original matrix.



## gray_image_matrix.m

## run_image_compress.m
