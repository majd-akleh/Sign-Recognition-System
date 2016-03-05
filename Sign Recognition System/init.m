function h = init()

    addpath('image processing functions');
    addpath('neural network functions');
   
    set(gcf, 'Units', 'Normalized', 'Position',[0 0 1 1]);
    h = [];
    h(1) = subplot(2,2,1);
    h(2) = subplot(2,2,2);
    h(3) = subplot(2,2,3);
    h(4) = subplot(2,2,4);


end

