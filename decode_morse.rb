def decode_char(val)
  signs = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
    'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---',
    'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-',
    'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
  }
  print signs.key(val)
end

def decode_word(val)
  val.split.each { |i| decode_char(i) }
end

def decode(val)
  val.split(/   /).each do |i|
    decode_word(i)
    print ' '
  end
  print "\n"
end

decode('-- -.--   -. .- -- .')
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
