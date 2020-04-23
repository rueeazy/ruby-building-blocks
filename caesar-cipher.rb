puts "What would you like to encode?"
string = gets.chomp.to_s

puts "And how many spaces would you like to shift this message?"
shift = gets.chomp.to_i


def caesar_cipher(string, shift)
    true_shift = shift % 26
    alphabet = ("a".."z").to_a
    upcase_alphabet = ("A".."Z").to_a
    new_string = []
    string.each_char do |letter|
        if alphabet.include?(letter)
            new_letter = alphabet.index(letter) + true_shift
            if new_letter > 26
                new_letter = new_letter - 26
            end
            new_string.push(alphabet[new_letter])
        elsif upcase_alphabet.include?(letter)
            new_letter = upcase_alphabet.index(letter) + true_shift
            if new_letter > 26
                new_letter = new_letter - 26
            end
            new_string.push(upcase_alphabet[new_letter])
        else
            new_string.push(letter)
        end
    end
    p new_string.join("")
end

caesar_cipher(string,shift)