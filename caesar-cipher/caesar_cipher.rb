def get_user_input
  puts "Please enter a sentence, alphabetic characters only."
  string_input = gets.chomp

  puts "Please enter a positive or negative integer up to 25.\nIt will represent how your sentence is shifted."
  shift_value_input = gets.chomp.to_i
  unless shift_value_input.between?(-25, 25)
    puts "Invalid input detected: defaulting shift to 0."
    shift_value_input = 0
  end

  [string_input, shift_value_input]
end

def cipher_numcode_shifter(precoded_letter, shift_by_int)
  postcoded_letter = precoded_letter + shift_by_int
  
  if postcoded_letter > 26 then postcoded_letter -= 26 end
  if postcoded_letter < 1 then postcoded_letter +=  26 end
  
  postcoded_letter
end

def caesar_cipher(string_input, shift_value_input)
  low_abc_array = ("a".."z").to_a
  high_abc_array = ("A".."Z").to_a
  
  result_array = Array.new

  string_input.each_char do |ch|
    was_upcase = false
    if high_abc_array.include?(ch) then was_upcase = true end
      
      unless low_abc_array.include?(ch) ||  high_abc_array.include?(ch)
        result_array.push(ch)
        next
      end
      
    lower = ch.downcase

    precoded_letter = low_abc_array.index(lower) + 1
    postcoded_letter = cipher_numcode_shifter(precoded_letter, shift_value_input)

    if was_upcase
      result_letter = low_abc_array[postcoded_letter - 1].upcase
    else
      result_letter = low_abc_array[postcoded_letter - 1]
    end

    result_array.push(result_letter)
  end

  result_array.join("")
end

string_input, shift_value_input = get_user_input
string_result = caesar_cipher(string_input, shift_value_input)
puts string_result