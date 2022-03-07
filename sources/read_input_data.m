% reads cluster count and points from input files 
file_params = "cls/cluster_1.param";
file_points ="cls/cluster_1.points";

function [NC points] = read_input_data(file_params, file_points)
	
	% set these values correctly
	NC = 0;
	points = [];
  fid=fopen(file_params);
  
	% TODO read NC
  NC = load(file_params);
	% TODO read points
  load(file_points,"points");
  fclose(file_params);
end

