# decode a character method
def decode_char(morse_code)
  morse_code_table = {
    ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E",
    "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J",
    "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",
    ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
    "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y",
    "--.." => "Z"
  }
  
  morse_code_table[morse_code] || ""
end

# decode a word method
def decode_word(morse_code)
  morse_code_words = morse_code.split(" ")
  decoded_word = ""
  
  morse_code_words.each do |morse_char|
    decoded_char = decode_char(morse_char)
    decoded_word << decoded_char if decoded_char != ""
  end
  
  decoded_word
end
