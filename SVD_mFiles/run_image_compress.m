function run_image_compress(filep, rk)

  #read the image file and convert to grayscale matrix
  gray_image = gray_image_matrix(filep);
  
  #make sure the passed rank is reasonable
  rk = max(1,min(rk, min(size(gray_image))-1));
  
  #use SVD to find the lower rank approximation
  [lowM, relerr] = lower_rank(gray_image, rk);
  
  #display the original image
  figure;
  imshow(gray_image), title(sprintf('Uncompressed Image: Rank %d.', rank(gray_image)));
 
  #display the lower rank (compressed image)
  figure;
  imshow(uint8(lowM)), title(sprintf('Rank %d Image: Rel. Error = %.6f', rk, relerr));
  
end