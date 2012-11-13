function [X] = make_lyrics_sparse(data, vocab)
% Returns a sparse matrix representation of the lyrics data.
%
% Usage:
%
%  [X] = MAKE_SPARSE(DATA)
%
% Converts the music data bag of words structure into a sparse matrix.

colidx = (horzcat(data.word_idx))';
counts = (horzcat(data.word_counts))';

for i=1:numel(data)
    if numel(data(i).word_idx)~=numel(data(i).word_counts)
        keyboard;
    end
end
    
rowidx = zeros(size(colidx));

idx = 1;

t = CTimeleft(numel(data));
for i = 1:numel(data)
    t.timeleft();    
    for j = 1:numel(data(i).word_idx)
        rowidx(idx) = i;
        idx = idx + 1;
    end
end

X = sparse(rowidx, double(colidx), double(counts), ...
           numel(data), numel(vocab));


