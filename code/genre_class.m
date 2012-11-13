function class = genre_class(genre)
% Transforms a text description of a genre to a class label.
%
% Usage:
%
%   CLASS = GENRE_CLASS(GENRE)

class = -1;
if strcmp(genre, 'punk')
    class = 1;
elseif strcmp(genre, 'soul and reggae')
    class = 2;
elseif strcmp(genre, 'metal')
    class = 3;
elseif strcmp(genre, 'folk')
    class = 4;
elseif strcmp(genre, 'classic pop and rock')
    class = 5;
elseif strcmp(genre, 'jazz and blues')
    class = 6;
elseif strcmp(genre, 'pop')
    class = 7;
elseif strcmp(genre, 'dance and electronica')
    class = 8;
elseif strcmp(genre, 'hip-hop')
    class = 9;
elseif strcmp(genre, 'classical')
    class = 10;
end    

end