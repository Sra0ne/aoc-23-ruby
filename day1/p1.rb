# aoc day 1 part 1
text = File.read('inputp1.txt') # prolly there's a better way
strarr = text.split
def sumofconcatenateddigits(arr)
  concatenated = 0

  arr.each do |element|
    first_digit = element.scan(/\d/).first
    last_digit = element.scan(/\d/).last

    concatenated += "#{first_digit}#{last_digit}".to_i if first_digit && last_digit
  end

  concatenated
end

result = sumofconcatenateddigits(strarr)

p result
