# This is my original code for solving the Caesar Cipher project, wrapped in a method.
# It runs as a script, and it works.
# However, it is not easily testable (you have to keep running the script with different inputs).
# Now, I want to recode the project, using TDD.

def original_solution

puts 'What would you like to say?'
string = gets.chomp
puts 'How far would you like to shift?'
shift = gets.chomp.to_i

shift %= 26 if shift >= 26

number_sequence = string.chars.map do |letter|
  if letter.ord.between?(65, 90)
    if letter.ord.between?(65, 90 - shift)
      letter.ord + shift
    else
      letter.ord + shift - 90 + 65
    end
  elsif letter.ord.between?(97, 122)
    if letter.ord.between?(97, 122 - shift)
      letter.ord + shift
    else
      letter.ord + shift - 122 + 97
    end
  else
    letter.ord
  end
end

letter_sequence = number_sequence.map do |number|
  number.chr
end

new_string = letter_sequence.join

puts 'Your cipher is:'
puts new_string

end