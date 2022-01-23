require "./corpus"
require "./game"

corpus = make_corpus_dumb()

g = Game.new(corpus)

p! g.guess([1_u8, 2_u8, 3_u8, 4_u8, 5_u8])
