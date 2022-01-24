def caesar_cipher (text, shift=13)
  codes = get_codes(text, shift)
  codes.map {|code| code.chr } .join('')
end

def get_codes(text, shift)
  upBase = 'A'.ord
  dowBase = 'a'.ord

  text.chars.map do |char|

    if char.ord.between?(97, 122)
      get_shift(char.ord, dowBase, shift)
    elsif char.ord.between?(65, 90)
      get_shift(char.ord, upBase, shift)
    else
      char.ord
    end
    
  end

end

def get_shift(ord, base, shift)
  base + (ord - base + shift) % 26
end