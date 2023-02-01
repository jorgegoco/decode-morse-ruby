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
# decode_char('-..-')

def decode_word(val)
  val.split(" ").each{|i| decode_char(i)}
end

# decode_word("-- -.--")

def decode(val)
  val.split(/   /).each{|i| decode_word(i)
print " "}
print "\n"
end

decode("-- -.--   -. .- -- .")
decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

