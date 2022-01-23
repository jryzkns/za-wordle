require "./definitions"

class Game
	property ans : Word
	property ans_ltrs : Set(Letter)

	def initialize(corpus, seed = 0)
		p! @ans = corpus.sample(1)[0]
		@ans_ltrs = Set.new(@ans)
	end

	def guess(word)
		tiles = [] of Tuple(UInt8, Tile)
		(0..word.size-1).zip(word.zip(@ans)) do |pos, (guess_ltr, ans_ltr)| {
			if guess_ltr == ans_ltr
				tiles << {GREEN, Tile.new(pos, guess_ltr)}

				tiles << {YELLOW, Tile.new(pos, guess_ltr)}
			else
				tiles << {WHITE, Tile.new(pos, guess_ltr)}
			end
		} end
		tiles
	end
end
