%Lab 2 : Task 3 - Prateek Grover

sentence = 'The entropy was originally created by Shannon as part of his theory of communication, in which a data communication system is composed of three elements: a source of data, a communication channel, and a receiver.';
bin_sentence = dec2bin(sentence);
re_bin = reshape(bin_sentence,[1,length(sentence)*7])
