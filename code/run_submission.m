clear;
load ../data/music_dataset.mat

[Xt_lyrics] = make_lyrics_sparse(train, vocab);
[Xq_lyrics] = make_lyrics_sparse(quiz, vocab);

Yt = zeros(numel(train), 1);
for i=1:numel(train)
    Yt(i) = genre_class(train(i).genre);
end

Xt_audio = make_audio(train);
Xq_audio = make_audio(quiz);

%% Run algorithm
ranks = predict_genre(Xt_lyrics, Xq_lyrics, ...
                      Xt_audio, Xq_audio, ...
                      Yt);

%% Save results to a text file for submission
save('-ascii', 'submit.txt', 'ranks');

