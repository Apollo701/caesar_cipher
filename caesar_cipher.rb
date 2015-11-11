def caesar_cipher(string, shift_factor)
  cipher = ""
  string.each_char do |letter|
    /[a-zA-Z]/ === letter ? cipher += shift_letter(letter, shift_factor) : cipher += letter
  end
  puts cipher
end

def shift_letter(letter, shift_factor)
  shift_factor.times do
    letter === "z" || letter === "Z" ? letter = letter.next[0] : letter = letter.next
  end
  return letter
end