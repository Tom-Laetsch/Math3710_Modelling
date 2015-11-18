function gray_image = gray_image_matrix(filep)
  
  #read the image file
  image = imread(filep);
  [~,~,cols] = size(image);
  
  if cols == 3
    #convert to gray image if rgb
    gray_image = .3*image(:,:,1) + .55*image(:,:,2) + .15*image(:,:,3);
  else
    #keep if already gray
    gray_image = image;
  end
  
end