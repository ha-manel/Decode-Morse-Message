def decode_char(char)
  morse_dict = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }
  morse_dict.key(char)
end

def decode_word(word)
  array = word.split
  english = []
  array.each { |letter| english.insert(english.length, decode_char(letter)) }
  english.join
end

def decode_msg(msg)
  array = msg.split('   ')
  english = []
  array.each { |word| english.insert(english.length, decode_word(word)) }
  english.join(' ')
end

print decode_msg('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
