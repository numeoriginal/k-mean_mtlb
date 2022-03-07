% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = [];

	% TODO K-Means code 
  [nr_lin nr_col] = size(points);
  rnd = randperm(nr_lin);
  centroids = points(rnd(1:NC), :);
  
  do init = centroids;
  for i = 1 : nr_lin
    min = 5000;
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
  endfor

  for j=1:NC
    contor = 0;
    sum_x =0;
    sum_y=0;
    sum_z=0;
     for i=1:nr_lin
       if v(i) == j
       sum_x = sum_x + points(i,1);
       sum_y = sum_y +points(i,2);
       sum_z = sum_z + points(i,3);
        contor=contor+1;  
       endif
     endfor
     centroids(j,1) = sum_x / contor;
     centroids(j,2) = sum_y / contor;
     centroids(j,3) = sum_z / contor;
  endfor
  until init == centroids;
end
