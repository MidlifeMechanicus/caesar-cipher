# Take input string and shift value
    # Negative values need to be converted
# Convert string to numbers
    # #.ord will convert to number between 97 - 122
    # Capitals are separate; they run from 65 - 90
    # #.chr will convert them back
# Add shift value to each number
    #remember to wrap!
# Convert shift value back to letters
# Return new string
string = "Hello, my friend."
shift = 5
string.chars.map{|i| i.ord}

def create_cipher (string, shift)
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
end
