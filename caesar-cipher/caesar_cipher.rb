# Project plan:
# 1: Get string from user input of alphabetic character "string_input", and positive or negative number representing right or left shift "shift_value_input"
# 2: Convert "string_input" to numeric values 1/26 representing alphabetic index "num_encoded_input", convert "shift_value_input" to integer
# 3: Shift "num_encoded_input" "shift_value_input"
# 4: Convert "num_encoded_output" to "string_output" from number using alphabetic index


# 1 -> Grab user input, ensure user input validity (alphabet for 1st var, integer for 2nd)
def get_user_input
  puts "Please enter a sentence, alphabetic characters only."
  string_input = gets.chomp

  puts "Please enter a positive or negative integer up to 25.\nIt will represent how your sentence is shifted."
  shift_value_input = gets.chomp.to_i
  unless shift_value_input.between?(-25, 25)
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

string_input, shift_value_input = get_user_input
abc_array = ("a".."z").to_a
result_array = Array.new

string_input.each_char do |ch|
  lower = ch.downcase
  precoded_letter = abc_array.index(lower) + 1
  postcoded_letter = cipher_numcode_shifter(precoded_letter, shift_value_input)
  result_array.push(abc_array[postcoded_letter - 1])
end

string_result = result_array.join("")
puts string_result