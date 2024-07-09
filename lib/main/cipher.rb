# Generates a cipher based on shifting string characters by a set amount

class Cipher

  def intialize
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

  def add(a, b)
    a + b
  end
end
