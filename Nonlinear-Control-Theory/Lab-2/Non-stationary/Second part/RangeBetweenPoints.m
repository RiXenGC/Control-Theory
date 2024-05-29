function ro = RangeBetweenPoints( x, y )
%   RANGEBETWEENPOINTS calculate distance between two points on graph

    rows = min( size(x,1), size(y,1) );
    
    ro = eye(size(x,1), 1);
    for i = 1:rows
        sum = 0;
        for j = 1:size(x, 2)
            sum = sum + ( y(i, j) - x(i, j) ).^2;
        end
        ro(i, 1) = sqrt( sum );
    end
    
end

