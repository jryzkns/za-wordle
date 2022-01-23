require "./definitions"

def apply_tile(corpus, type, position, value)
	case type
	when GREEN
		corpus.select! { |word| word[position] == value }
	when YELLOW
		corpus.select! { |word| Set.new(word).includes?(value) && word[position] != value }
	when WHITE
		corpus.select! { |word| !Set.new(word).includes?(value) }
	end
end
