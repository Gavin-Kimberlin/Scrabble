require('rspec')
require('scrabble')

describe('#score') do
  word1 = ScrabbleWord.new("bacon")
  it("Returns a score of 1 for letters A, E, I, O, U, L, N, R, S, and T") do
    expect(word1.score()).to(eq(9))
  end

#   it("Returns a score of 2 for letters D and G") do
#   expect(("G").score()).to(eq(2))
# end
#
#   it("Returns a score of 3 for letters B, C, M, and P") do
#   expect(("B").score()).to(eq(3))
# end
#
#   it("Returns a score of 4 for letters F, H, V, W, and Y") do
#   expect(("F").score()).to(eq(4))
# end
#
#   it("Returns a score of 5 for the letter K") do
#     expect(("K").score()).to(eq(5))
#   end
#
#   it("Returns a score of 8 for letters J and X") do
#     expect(("J").score()).to(eq(8))
#   end
#
#   it("Returns a score of 10 for letters Q and Z") do
#     expect(("Q").score()).to(eq(10))
#   end
end
