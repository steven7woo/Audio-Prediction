function R = get_ranks(yscores)
% Returns a ranking of class labels based on the given scores.
%
% Usage:
%
%   R = GET_RANKS(YSCORES)
%
% Sorts the scores in descending order to obtain the correct ranking. NOTE:
% this function depends on MATLAB's sort function, which does not break
% ties randomly. If two scores are equal, the smaller index will always be
% given the better rank. If you wish to break ties in a different fashion,
% you will need to implement this.

[~, R] = sort(yscores, 2, 'descend');

end