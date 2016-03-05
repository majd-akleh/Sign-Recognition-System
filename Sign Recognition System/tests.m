
createDataBase('hands/temp/', 'data3');

[hands,regions] = readHands2('hands' , 5 , 'jpg');

[hands,regions] = readHands('hands' , 5 , 'jpg');

[hands] = readHands3('data3' , 5 , 'jpg');

figure,imshow( reshape(hands , 500 , 100)  );


grayImage = rgb2gray(imread( 'hands/hand (1).jpg' ));
[a ,bounds]= HandDetector(grayImage);


[hands] = readHands3('hands\new' , 5 , 'png');
imshow( reshape(hands(1,:) , 100 , 100) )
predict( Theta1 , Theta2 , hands )


addpath('circular cut');
a = imread('shot.jpg');
ed = edge(rgb2gray(a),'sobel');
dil = imdilate(ed , strel('disk' , 3 ) );
b(:,:,1) = a(:,:,1) - a(:,:,1) .* im2uint8(dil);
b(:,:,2) = a(:,:,2) - a(:,:,2) .* im2uint8(dil);
b(:,:,3) = a(:,:,3) - a(:,:,3) .* im2uint8(dil);
imshow([a b]);


hsvmask = skinDetectorHSV( b );
[~,ycbcrmask] = generate_skinmap( b );

figure,imshow([hsvmask ycbcrmask]);



[ bw , bnds ] = HandDetector( ycbcrmask );
imshow(imfill ( bw + imcrop(dil,bnds) ,'holes'));

[ lbs , n , cent ] = isolateFingers( bw );
pnts = fingertips( lbs , n , cent );






        






