# Implement your object-oriented solution here!

class LargestPalindromeProduct

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

def answer(range = 100..999)
  array = []
  range.each do |x|
    range.each do |y|
      array.push(x * y)
    end
  end
  array.select { |n| palindrome?(n) }.max
end

end