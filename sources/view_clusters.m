% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
	% TODO graphical representation coded here 
  [nr_lin nr_col] = size(points);
  [NC nr_col_2] = size(centroids);
   t=['r','g','c','b','m'];
   
   for i = 1 : nr_lin
    min = 1000;
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

  hold on
for j=1:NC
  for i=1:nr_lin
    if v(i) == j
     scatter3(points(i,1),points(i,2), points(i,3),[],t(j),'filled');
    endif
    endfor
  endfor
  hold off
end

