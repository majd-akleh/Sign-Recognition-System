function [ info ] = processImage( snapshot )

[ bw , bnds ] = HandDetector( rgb2hsv(snapshot) );

[ lbs , n , cent ] = isolateFingers( bw );

pnts = fingertips( lbs , n , cent );


info.snapshot = snapshot;
info.binaryImage = bw;
info.bounds = bnds;
info.labels = lbs;
info.numOfLabels = n ;
info.centroid = cent;
info.fingerTips = pnts;

end

