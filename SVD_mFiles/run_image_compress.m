function run_image_compress(filep, rnk)

  #read the image file and convert to grayscale matrix
  gray_image = gray_image_matrix(filep);
  
  #use SVD to find the lower rank approximation
  [lowM, ornk, relerr] = lower_rank(gray_image, rnk);
  
  #display the original image
  figure;
  imshow(gray_image), title(sprintf('Uncompressed Image: Rank %d.', rank(gray_image)));
 
  #display the lower rank (compressed image)
  figure;
  imshow(uint8(lowM)), title(sprintf('Rank %d Image: Rel. Error = %.6f', ornk, relerr));
  
end