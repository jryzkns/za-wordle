require "./definitions"

def word_from_idx(idx, word_len = 5, alphabet_size = 26)
	word, backidx = Word.new(word_len, 1), 1
	until idx == 0
		idx, dig = idx.divmod(alphabet_size)
		word[-backidx] += dig
		backidx += 1
	end
	word
end

def make_corpus_dumb(word_len = 5, alphabet_size = 26)
	corpus = [] of Word
	idx = 0
	until idx == alphabet_size ** word_len
		corpus << word_from_idx(idx, word_len, alphabet_size)
		idx += 1
	end
	corpus 
end
