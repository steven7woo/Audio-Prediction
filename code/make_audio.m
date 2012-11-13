function [X Y] = make_audio(data)
% Returns a representation of the audio features.
%
% Usage:
%
%   [X] = MAKE_AUDIO(AUDIO)
%
% Creates a matrix representation of the audio features.

m = numel(data(1).audio_features);
X = zeros(numel(data), m);
 
% Create the matrix
t = CTimeleft(numel(data));
for i=1:numel(data)
    t.timeleft();
    
    x_i = data(i).audio_features;    
    for j=1:m
        X(i, j) = x_i(j);
    end
end

end