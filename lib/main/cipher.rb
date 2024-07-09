# Generates a cipher based on shifting string characters by a set amount

class Cipher

  def intialize
    # Another approach would be to set attributes such as @string, @shift and @cipher.
  end

  def encode
    string = get_string
    shift = get_shift
    get_cipher(string, shift)
  end

  def get_string
    puts 'What would you like to say?'
    string = gets.chomp
  end

  def get_shift
    puts 'How far would you like to shift?'
    shift = gets.chomp.to_i
    # shift %= 26 if shift >= 26
    shift >= 26 ? shift % 26 : shift
  end

  def get_cipher(string, shift)
    number_sequence = string.chars.map do |letter|
      if letter.ord.between?(65, 90)
        if letter.ord.between?(65, 90 - shift)
          letter.ord + shift
        else
          letter.ord + shift - 90 + 64
        end
      elsif letter.ord.between?(97, 122)
        if letter.ord.between?(97, 122 - shift)
          letter.ord + shift
        else
          letter.ord + shift - 122 + 96
        end
      else
        letter.ord
      end
    end
    
    letter_sequence = number_sequence.map do |number|
      number.chr
    end
    
    new_string = letter_sequence.join
  end

end
