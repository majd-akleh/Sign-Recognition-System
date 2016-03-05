function  SignRecognizer()    
     
    [ h ] = init();
    
    for i = 1:1
        tic
%         snapshot = imread('http://192.168.1.33:8080/photoaf.jpg');       
         snapshot = imread('peppers.png');
        
        [info] = processImage( snapshot );
        toc
        
        plotResults(h ,info);
        pause(1);
    end
    
end