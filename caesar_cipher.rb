def caesar_cipher(str, shift)
  downcase_alph = ("a".."z").to_a
  upcase_alph = ("A".."Z").to_a
  output = ""

  str.each_char do |c|
    idx = downcase_alph.index(c) || upcase_alph.index(c)
    encryption = (idx + shift) % 26 if idx
    if downcase_alph.include?(c)
      output << downcase_alph[encryption]
    elsif upcase_alph.include?(c)
      output << upcase_alph[encryption]
    else
      output << c
    end
  end

  output
end