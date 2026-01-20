# Project plan:
# 1: Get string from user input of alphabetic character "string_input", and positive or negative number representing right or left shift "shift_value"
# 2: Convert "string_input" to numeric values 1/26 representing alphabetic index "num_encoded_input", convert "shift_value" to integer
# 3: Shift "num_encoded_input" "shift_value"
# 4: Convert "num_encoded_output" to "string_output" from number using alphabetic index
# Function 1: Grab user input, ensure user input validity (alphabet for 1st var, integer for 2nd)
def get_user_input
  puts "Please enter a sentence, alphabetic characters only."
  string_input = gets.chomp

  puts "Please enter a positive or negative integer.\nIt will represent how your sentence is shifted."
  shift_value = gets.chomp.to_i

  [string_input, shift_value]
end

string_input, shift_value = get_user_input