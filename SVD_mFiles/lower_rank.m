function [lowM, ornk, relerr] = lower_rank(M,irnk)
  
  #dimensions of the image matrix
  [m,n] = size(M);
  
  #make sure the approximation rank is reasonable
  ornk = max(1,min(irnk, rank(M)-1));
  
  [L,S,R] = svd(M);
  
  #initialize the return matrix
  lowM = zeros(m,n);
  
  #create the lower rank matrix
  lowM = L(:,1:ornk) * S(1:ornk,1:ornk) * R(:,1:ornk)';
    
  #Calculate the relative error
  sigmas = diag(S);
  relerr = sqrt(sum(sigmas(ornk+1:end) .^ 2)/sum(sigmas .^ 2));
  
  #display the relative error of lower rank approximation
  disp(sprintf("Rank %d Approximation Relative Error: %.6f.",ornk,relerr));
  
end