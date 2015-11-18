function [lowM, relerr] = lower_rank(M,rk)
  
  #dimensions of the image matrix
  [m,n] = size(M);
  len = max(1,min(rk, min([m,n])-1));
  
  [L,S,R] = svd(M);
  
  #initialize the return matrix
  lowM = zeros(m,n);
  
  #create the lower rank matrix
  lowM = L(:,1:len) * S(1:len,1:len) * R(:,1:len)';
    
  #Calculate the relative error
  sigmas = diag(S);
  relerr = sqrt(sum(sigmas(len+1:end) .^ 2)/sum(sigmas .^ 2));
  
  #display the relative error of lower rank approximation
  disp(sprintf("Rank %d Approximation Relative Error: %.6f.",len,relerr));
  
end