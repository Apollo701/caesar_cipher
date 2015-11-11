def caesar_cipher(string, shift_factor)
  cipher = ""
  string.each_char do |letter|
    #cipher << (letter.ord + shift_factor).chr
    shift_factor.times {
      if letter === "z" || letter === "Z"
        letter = letter.next[0]
      else
      letter = letter.next
    end
    }
    cipher += letter
  end
  puts cipher
end