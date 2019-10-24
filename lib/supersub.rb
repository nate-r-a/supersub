# frozen_string_literal: true

module SuperSub
  # x.split('').each_with_index do |a, i|
  #   puts "\"#{a}\": \"#{y.split('')[i]}\","
  # end

  SUPERSCRIPT = {
    "a": 'ᵃ',
    "b": 'ᵇ',
    "c": 'ᶜ',
    "d": 'ᵈ',
    "e": 'ᵉ',
    "f": 'ᶠ',
    "g": 'ᵍ',
    "h": 'ʰ',
    "i": 'ⁱ',
    "j": 'ʲ',
    "k": 'ᵏ',
    "l": 'ˡ',
    "m": 'ᵐ',
    "n": 'ⁿ',
    "o": 'ᵒ',
    "p": 'ᵖ',
    "q": 'q',
    "r": 'ʳ',
    "s": 'ˢ',
    "t": 'ᵗ',
    "u": 'ᵘ',
    "v": 'ᵛ',
    "w": 'ʷ',
    "x": 'ˣ',
    "y": 'ʸ',
    "z": 'ᶻ',
    "A": 'ᴬ',
    "B": 'ᴮ',
    "C": 'ᶜ',
    "D": 'ᴰ',
    "E": 'ᴱ',
    "F": 'ᶠ',
    "G": 'ᴳ',
    "H": 'ᴴ',
    "I": 'ᴵ',
    "J": 'ᴶ',
    "K": 'ᴷ',
    "L": 'ᴸ',
    "M": 'ᴹ',
    "N": 'ᴺ',
    "O": 'ᴼ',
    "P": 'ᴾ',
    "Q": 'Q',
    "R": 'ᴿ',
    "S": 'ˢ',
    "T": 'ᵀ',
    "U": 'ᵁ',
    "V": 'ⱽ',
    "W": 'ᵂ',
    "X": 'ˣ',
    "Y": 'ʸ',
    "Z": 'ᶻ',
    "0": '⁰',
    "1": '¹',
    "2": '²',
    "3": '³',
    "4": '⁴',
    "5": '⁵',
    "6": '⁶',
    "7": '⁷',
    "8": '⁸',
    "9": '⁹'
  }.freeze

  SUBSCRIPT = {

  }.freeze

  def self.convert(str, style)
    case style
    when :subscript, :super
      str.split('').map { |a| SUPERSCRIPT[a.to_sym] }.join
    end
  end
end
