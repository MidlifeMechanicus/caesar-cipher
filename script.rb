puts "What would you like to say?"
string = gets.chomp
puts "How far would you like to shift?"
shift = gets.chomp.to_i

if shift >= 26
    shift = shift % 26
end

number_sequence = string.chars.map do |letter|
    if letter.ord.between?(65, 90)
        if letter.ord.between?(65, 90-shift)
            letter.ord + shift
        else
            letter.ord + shift - 90 + 65
        end
    elsif letter.ord.between?(97, 122)
        if letter.ord.between?(97, 122-shift)
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

new_string =  letter_sequence.join

puts "Your cipher is:"
puts new_string