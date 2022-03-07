% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
	% TODO compute clustering solution cost
  [nr_lin nr_col] = size(points);
  [NC nr_col_2] = size(centroids);
    c = ['g','r','b'];
   for i = 1 : nr_lin
    min = 9999;
      for j = 1 : NC
        x =(centroids(j,1)-points(i,1))^2;
        y =(centroids(j,2)-points(i,2))^2;
        z =(centroids(j,3)-points(i,3))^2;
        dist=sqrt(x+y+z);
        if dist < min
          min = dist;
          v(i) = j;
        endif
      endfor
      cost = cost + min;
  endfor
end

