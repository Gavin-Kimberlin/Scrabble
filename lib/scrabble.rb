require('pry')
class ScrabbleWord
  def initialize(word)
    @word = word
    @score = 0
    @letters = Hash.new()
    @letters = {'A' => 1, 'E' => 1, 'I' => 1, 'O' => 1, 'U' => 1, 'L' => 1, 'N' => 1, 'R' => 1, 'S' => 1, 'T' => 1, 'D' => 2, 'G' => 2, 'B' => 3, 'C' => 3, 'M' => 3, 'P' => 3, 'F' => 4, 'H' => 4, 'V' => 4, 'W' => 4, 'Y' => 4, 'K' => 5, 'J' => 8, 'X' => 8, 'Q' => 10, 'Z' => 10}
  end
  def score()
    @word.upcase().split('').each { |letter| @score += @letters.fetch(letter) }
    @score
  end
end


# val_one = ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']
# val_two = ['D', 'G']
# val_three = ['B', 'C', 'M', 'P']
# val_four = ['F', 'H', 'V', 'W', 'Y']
# val_five = ['K']
# val_eight = ['J', 'X']
# val_ten = ['Q', 'Z']
# @word.chars.map { |letter|
#   if val_one.include?(letter)
#     score += 1
#   elsif val_two.include?(letter)
#     score += 2
#   elsif val_three.include?(letter)
#     score += 3
#   elsif val_four.include?(letter)
#     score += 4
#   elsif val_five.include?(letter)
#     score += 5
#   elsif val_eight.include?(letter)
#     score += 8
#   elsif val_ten.include?(letter)
#     score += 10
#   end
# }


# @word.upcase!()
# score = 0
# array = @word.split('').map { |letters| letters.tr('AEIOULNRST', '1').tr('DG', '2').tr('BCMP', '3').tr('FHVWY', '4').tr('K', '5').tr('JX', '8').tr('QZ', '10') }
# array.each { |number| score += number.to_i }
# binding.pry
# score
