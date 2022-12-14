def decode_char(char)
  codes = {
    'a' => '.-', 'b' => '-...', 'c' => '-.-.', 'd' => '-..',
    'e' => '.', 'f' => '..-.', 'g' => '--.', 'h' => '....', 'i' => '..', 'j' => '.---',
    'k' => '-.-', 'l' => '.-..', 'm' => '--', 'n' => '-.', 'o' => '---', 'p' => '.--.',
    'q' => '--.-', 'r' => '.-.', 's' => '...', 't' => '-', 'u' => '..-', 'v' => '...-',
    'w' => '.--', 'x' => '-..-', 'y' => '-.--', 'z' => '--..'
  }
  codes.key(char).upcase
end

def decode_word(word)
  decoded_word = ''
  chars = word.split
  chars.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode_message(message)
  sentence = []
  words = message.split('  ')
  words.each do |word|
    sentence.push(decode_word(word))
  end
 sentence.join('  ')
end
