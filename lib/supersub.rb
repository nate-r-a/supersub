# frozen_string_literal: true

module SuperSub
  # def c(y)
  #   x = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
  #   x.split('').each_with_index do |a, i|
  #     puts "\"#{a}\" => \"#{y.split('')[i]}\","
  #   end
  # end

  SUPERSCRIPT = {
    'a' => 'ᵃ',
    'b' => 'ᵇ',
    'c' => 'ᶜ',
    'd' => 'ᵈ',
    'e' => 'ᵉ',
    'f' => 'ᶠ',
    'g' => 'ᵍ',
    'h' => 'ʰ',
    'i' => 'ⁱ',
    'j' => 'ʲ',
    'k' => 'ᵏ',
    'l' => 'ˡ',
    'm' => 'ᵐ',
    'n' => 'ⁿ',
    'o' => 'ᵒ',
    'p' => 'ᵖ',
    'q' => 'q',
    'r' => 'ʳ',
    's' => 'ˢ',
    't' => 'ᵗ',
    'u' => 'ᵘ',
    'v' => 'ᵛ',
    'w' => 'ʷ',
    'x' => 'ˣ',
    'y' => 'ʸ',
    'z' => 'ᶻ',
    'A' => 'ᴬ',
    'B' => 'ᴮ',
    'C' => 'ᶜ',
    'D' => 'ᴰ',
    'E' => 'ᴱ',
    'F' => 'ᶠ',
    'G' => 'ᴳ',
    'H' => 'ᴴ',
    'I' => 'ᴵ',
    'J' => 'ᴶ',
    'K' => 'ᴷ',
    'L' => 'ᴸ',
    'M' => 'ᴹ',
    'N' => 'ᴺ',
    'O' => 'ᴼ',
    'P' => 'ᴾ',
    'Q' => 'Q',
    'R' => 'ᴿ',
    'S' => 'ˢ',
    'T' => 'ᵀ',
    'U' => 'ᵁ',
    'V' => 'ⱽ',
    'W' => 'ᵂ',
    'X' => 'ˣ',
    'Y' => 'ʸ',
    'Z' => 'ᶻ',
    '0' => '⁰',
    '1' => '¹',
    '2' => '²',
    '3' => '³',
    '4' => '⁴',
    '5' => '⁵',
    '6' => '⁶',
    '7' => '⁷',
    '8' => '⁸',
    '9' => '⁹'
  }.freeze

  SUBSCRIPT = {
    'a' => 'ₐ',
    'b' => 'b',
    'c' => 'c',
    'd' => 'd',
    'e' => 'ₑ',
    'f' => 'f',
    'g' => 'g',
    'h' => 'ₕ',
    'i' => 'ᵢ',
    'j' => 'ⱼ',
    'k' => 'ₖ',
    'l' => 'ₗ',
    'm' => 'ₘ',
    'n' => 'ₙ',
    'o' => 'ₒ',
    'p' => 'ₚ',
    'q' => 'q',
    'r' => 'ᵣ',
    's' => 'ₛ',
    't' => 'ₜ',
    'u' => 'ᵤ',
    'v' => 'ᵥ',
    'w' => 'w',
    'x' => 'ₓ',
    'y' => 'y',
    'z' => 'z',
    'A' => 'ₐ',
    'B' => 'B',
    'C' => 'C',
    'D' => 'D',
    'E' => 'ₑ',
    'F' => 'F',
    'G' => 'G',
    'H' => 'ₕ',
    'I' => 'ᵢ',
    'J' => 'ⱼ',
    'K' => 'ₖ',
    'L' => 'ₗ',
    'M' => 'ₘ',
    'N' => 'ₙ',
    'O' => 'ₒ',
    'P' => 'ₚ',
    'Q' => 'Q',
    'R' => 'ᵣ',
    'S' => 'ₛ',
    'T' => 'ₜ',
    'U' => 'ᵤ',
    'V' => 'ᵥ',
    'W' => 'W',
    'X' => 'ₓ',
    'Y' => 'Y',
    'Z' => 'Z',
    '0' => '₀',
    '1' => '₁',
    '2' => '₂',
    '3' => '₃',
    '4' => '₄',
    '5' => '₅',
    '6' => '₆',
    '7' => '₇',
    '8' => '₈',
    '9' => '₉'
  }.freeze

  SCRIPT = {
    'a' => '𝒶',
    'b' => '𝒷',
    'c' => '𝒸',
    'd' => '𝒹',
    'e' => 'ℯ',
    'f' => '𝒻',
    'g' => 'ℊ',
    'h' => '𝒽',
    'i' => '𝒾',
    'j' => '𝒿',
    'k' => '𝓀',
    'l' => '𝓁',
    'm' => '𝓂',
    'n' => '𝓃',
    'o' => 'ℴ',
    'p' => '𝓅',
    'q' => '𝓆',
    'r' => '𝓇',
    's' => '𝓈',
    't' => '𝓉',
    'u' => '𝓊',
    'v' => '𝓋',
    'w' => '𝓌',
    'x' => '𝓍',
    'y' => '𝓎',
    'z' => '𝓏',
    'A' => '𝒜',
    'B' => 'ℬ',
    'C' => '𝒞',
    'D' => '𝒟',
    'E' => 'ℰ',
    'F' => 'ℱ',
    'G' => '𝒢',
    'H' => 'ℋ',
    'I' => 'ℐ',
    'J' => '𝒥',
    'K' => '𝒦',
    'L' => 'ℒ',
    'M' => 'ℳ',
    'N' => '𝒩',
    'O' => '𝒪',
    'P' => '𝒫',
    'Q' => '𝒬',
    'R' => 'ℛ',
    'S' => '𝒮',
    'T' => '𝒯',
    'U' => '𝒰',
    'V' => '𝒱',
    'W' => '𝒲',
    'X' => '𝒳',
    'Y' => '𝒴',
    'Z' => '𝒵'
  }.freeze

  SCRIPT_BOLD = {
    'a' => '𝓪',
    'b' => '𝓫',
    'c' => '𝓬',
    'd' => '𝓭',
    'e' => '𝓮',
    'f' => '𝓯',
    'g' => '𝓰',
    'h' => '𝓱',
    'i' => '𝓲',
    'j' => '𝓳',
    'k' => '𝓴',
    'l' => '𝓵',
    'm' => '𝓶',
    'n' => '𝓷',
    'o' => '𝓸',
    'p' => '𝓹',
    'q' => '𝓺',
    'r' => '𝓻',
    's' => '𝓼',
    't' => '𝓽',
    'u' => '𝓾',
    'v' => '𝓿',
    'w' => '𝔀',
    'x' => '𝔁',
    'y' => '𝔂',
    'z' => '𝔃',
    'A' => '𝓐',
    'B' => '𝓑',
    'C' => '𝓒',
    'D' => '𝓓',
    'E' => '𝓔',
    'F' => '𝓕',
    'G' => '𝓖',
    'H' => '𝓗',
    'I' => '𝓘',
    'J' => '𝓙',
    'K' => '𝓚',
    'L' => '𝓛',
    'M' => '𝓜',
    'N' => '𝓝',
    'O' => '𝓞',
    'P' => '𝓟',
    'Q' => '𝓠',
    'R' => '𝓡',
    'S' => '𝓢',
    'T' => '𝓣',
    'U' => '𝓤',
    'V' => '𝓥',
    'W' => '𝓦',
    'X' => '𝓧',
    'Y' => '𝓨',
    'Z' => '𝓩',
    '0' => '𝟎',
    '1' => '𝟏',
    '2' => '𝟐',
    '3' => '𝟑',
    '4' => '𝟒',
    '5' => '𝟓',
    '6' => '𝟔',
    '7' => '𝟕',
    '8' => '𝟖',
    '9' => '𝟗'
  }.freeze

  FULLWIDTH = {
    'a' => 'ａ',
    'b' => 'ｂ',
    'c' => 'ｃ',
    'd' => 'ｄ',
    'e' => 'ｅ',
    'f' => 'ｆ',
    'g' => 'ｇ',
    'h' => 'ｈ',
    'i' => 'ｉ',
    'j' => 'ｊ',
    'k' => 'ｋ',
    'l' => 'ｌ',
    'm' => 'ｍ',
    'n' => 'ｎ',
    'o' => 'ｏ',
    'p' => 'ｐ',
    'q' => 'ｑ',
    'r' => 'ｒ',
    's' => 'ｓ',
    't' => 'ｔ',
    'u' => 'ｕ',
    'v' => 'ｖ',
    'w' => 'ｗ',
    'x' => 'ｘ',
    'y' => 'ｙ',
    'z' => 'ｚ',
    'A' => 'Ａ',
    'B' => 'Ｂ',
    'C' => 'Ｃ',
    'D' => 'Ｄ',
    'E' => 'Ｅ',
    'F' => 'Ｆ',
    'G' => 'Ｇ',
    'H' => 'Ｈ',
    'I' => 'Ｉ',
    'J' => 'Ｊ',
    'K' => 'Ｋ',
    'L' => 'Ｌ',
    'M' => 'Ｍ',
    'N' => 'Ｎ',
    'O' => 'Ｏ',
    'P' => 'Ｐ',
    'Q' => 'Ｑ',
    'R' => 'Ｒ',
    'S' => 'Ｓ',
    'T' => 'Ｔ',
    'U' => 'Ｕ',
    'V' => 'Ｖ',
    'W' => 'Ｗ',
    'X' => 'Ｘ',
    'Y' => 'Ｙ',
    'Z' => 'Ｚ',
    '0' => '０',
    '1' => '１',
    '2' => '２',
    '3' => '３',
    '4' => '４',
    '5' => '５',
    '6' => '６',
    '7' => '７',
    '8' => '８',
    '9' => '９'
  }.freeze

  GOTHIC = {
    'a' => '𝔞',
    'b' => '𝔟',
    'c' => '𝔠',
    'd' => '𝔡',
    'e' => '𝔢',
    'f' => '𝔣',
    'g' => '𝔤',
    'h' => '𝔥',
    'i' => '𝔦',
    'j' => '𝔧',
    'k' => '𝔨',
    'l' => '𝔩',
    'm' => '𝔪',
    'n' => '𝔫',
    'o' => '𝔬',
    'p' => '𝔭',
    'q' => '𝔮',
    'r' => '𝔯',
    's' => '𝔰',
    't' => '𝔱',
    'u' => '𝔲',
    'v' => '𝔳',
    'w' => '𝔴',
    'x' => '𝔵',
    'y' => '𝔶',
    'z' => '𝔷',
    'A' => '𝔄',
    'B' => '𝔅',
    'C' => 'ℭ',
    'D' => '𝔇',
    'E' => '𝔈',
    'F' => '𝔉',
    'G' => '𝔊',
    'H' => 'ℌ',
    'I' => 'ℑ',
    'J' => '𝔍',
    'K' => '𝔎',
    'L' => '𝔏',
    'M' => '𝔐',
    'N' => '𝔑',
    'O' => '𝔒',
    'P' => '𝔓',
    'Q' => '𝔔',
    'R' => 'ℜ',
    'S' => '𝔖',
    'T' => '𝔗',
    'U' => '𝔘',
    'V' => '𝔙',
    'W' => '𝔚',
    'X' => '𝔛',
    'Y' => '𝔜',
    'Z' => 'ℨ'
  }.freeze

  GOTHIC_BOLD = {
    'a' => '𝖆',
    'b' => '𝖇',
    'c' => '𝖈',
    'd' => '𝖉',
    'e' => '𝖊',
    'f' => '𝖋',
    'g' => '𝖌',
    'h' => '𝖍',
    'i' => '𝖎',
    'j' => '𝖏',
    'k' => '𝖐',
    'l' => '𝖑',
    'm' => '𝖒',
    'n' => '𝖓',
    'o' => '𝖔',
    'p' => '𝖕',
    'q' => '𝖖',
    'r' => '𝖗',
    's' => '𝖘',
    't' => '𝖙',
    'u' => '𝖚',
    'v' => '𝖛',
    'w' => '𝖜',
    'x' => '𝖝',
    'y' => '𝖞',
    'z' => '𝖟',
    'A' => '𝕬',
    'B' => '𝕭',
    'C' => '𝕮',
    'D' => '𝕯',
    'E' => '𝕰',
    'F' => '𝕱',
    'G' => '𝕲',
    'H' => '𝕳',
    'I' => '𝕴',
    'J' => '𝕵',
    'K' => '𝕶',
    'L' => '𝕷',
    'M' => '𝕸',
    'N' => '𝕹',
    'O' => '𝕺',
    'P' => '𝕻',
    'Q' => '𝕼',
    'R' => '𝕽',
    'S' => '𝕾',
    'T' => '𝕿',
    'U' => '𝖀',
    'V' => '𝖁',
    'W' => '𝖂',
    'X' => '𝖃',
    'Y' => '𝖄',
    'Z' => '𝖅',
    '0' => '0',
    '1' => '1',
    '2' => '2',
    '3' => '3',
    '4' => '4',
    '5' => '5',
    '6' => '6',
    '7' => '7',
    '8' => '8',
    '9' => '9'
  }.freeze

  SANS_ITALIC = {
    'a' => '𝘢',
    'b' => '𝘣',
    'c' => '𝘤',
    'd' => '𝘥',
    'e' => '𝘦',
    'f' => '𝘧',
    'g' => '𝘨',
    'h' => '𝘩',
    'i' => '𝘪',
    'j' => '𝘫',
    'k' => '𝘬',
    'l' => '𝘭',
    'm' => '𝘮',
    'n' => '𝘯',
    'o' => '𝘰',
    'p' => '𝘱',
    'q' => '𝘲',
    'r' => '𝘳',
    's' => '𝘴',
    't' => '𝘵',
    'u' => '𝘶',
    'v' => '𝘷',
    'w' => '𝘸',
    'x' => '𝘹',
    'y' => '𝘺',
    'z' => '𝘻',
    'A' => '𝘈',
    'B' => '𝘉',
    'C' => '𝘊',
    'D' => '𝘋',
    'E' => '𝘌',
    'F' => '𝘍',
    'G' => '𝘎',
    'H' => '𝘏',
    'I' => '𝘐',
    'J' => '𝘑',
    'K' => '𝘒',
    'L' => '𝘓',
    'M' => '𝘔',
    'N' => '𝘕',
    'O' => '𝘖',
    'P' => '𝘗',
    'Q' => '𝘘',
    'R' => '𝘙',
    'S' => '𝘚',
    'T' => '𝘛',
    'U' => '𝘜',
    'V' => '𝘝',
    'W' => '𝘞',
    'X' => '𝘟',
    'Y' => '𝘠',
    'Z' => '𝘡',
    '0' => '0',
    '1' => '1',
    '2' => '2',
    '3' => '3',
    '4' => '4',
    '5' => '5',
    '6' => '6',
    '7' => '7',
    '8' => '8',
    '9' => '9'
  }.freeze

  MONOSPACE = {
    'a' => '𝚊',
    'b' => '𝚋',
    'c' => '𝚌',
    'd' => '𝚍',
    'e' => '𝚎',
    'f' => '𝚏',
    'g' => '𝚐',
    'h' => '𝚑',
    'i' => '𝚒',
    'j' => '𝚓',
    'k' => '𝚔',
    'l' => '𝚕',
    'm' => '𝚖',
    'n' => '𝚗',
    'o' => '𝚘',
    'p' => '𝚙',
    'q' => '𝚚',
    'r' => '𝚛',
    's' => '𝚜',
    't' => '𝚝',
    'u' => '𝚞',
    'v' => '𝚟',
    'w' => '𝚠',
    'x' => '𝚡',
    'y' => '𝚢',
    'z' => '𝚣',
    'A' => '𝙰',
    'B' => '𝙱',
    'C' => '𝙲',
    'D' => '𝙳',
    'E' => '𝙴',
    'F' => '𝙵',
    'G' => '𝙶',
    'H' => '𝙷',
    'I' => '𝙸',
    'J' => '𝙹',
    'K' => '𝙺',
    'L' => '𝙻',
    'M' => '𝙼',
    'N' => '𝙽',
    'O' => '𝙾',
    'P' => '𝙿',
    'Q' => '𝚀',
    'R' => '𝚁',
    'S' => '𝚂',
    'T' => '𝚃',
    'U' => '𝚄',
    'V' => '𝚅',
    'W' => '𝚆',
    'X' => '𝚇',
    'Y' => '𝚈',
    'Z' => '𝚉',
    '0' => '𝟶',
    '1' => '𝟷',
    '2' => '𝟸',
    '3' => '𝟹',
    '4' => '𝟺',
    '5' => '𝟻',
    '6' => '𝟼',
    '7' => '𝟽',
    '8' => '𝟾',
    '9' => '𝟿'
  }.freeze

  SANS_BOLD = {
    'a' => '𝗮',
    'b' => '𝗯',
    'c' => '𝗰',
    'd' => '𝗱',
    'e' => '𝗲',
    'f' => '𝗳',
    'g' => '𝗴',
    'h' => '𝗵',
    'i' => '𝗶',
    'j' => '𝗷',
    'k' => '𝗸',
    'l' => '𝗹',
    'm' => '𝗺',
    'n' => '𝗻',
    'o' => '𝗼',
    'p' => '𝗽',
    'q' => '𝗾',
    'r' => '𝗿',
    's' => '𝘀',
    't' => '𝘁',
    'u' => '𝘂',
    'v' => '𝘃',
    'w' => '𝘄',
    'x' => '𝘅',
    'y' => '𝘆',
    'z' => '𝘇',
    'A' => '𝗔',
    'B' => '𝗕',
    'C' => '𝗖',
    'D' => '𝗗',
    'E' => '𝗘',
    'F' => '𝗙',
    'G' => '𝗚',
    'H' => '𝗛',
    'I' => '𝗜',
    'J' => '𝗝',
    'K' => '𝗞',
    'L' => '𝗟',
    'M' => '𝗠',
    'N' => '𝗡',
    'O' => '𝗢',
    'P' => '𝗣',
    'Q' => '𝗤',
    'R' => '𝗥',
    'S' => '𝗦',
    'T' => '𝗧',
    'U' => '𝗨',
    'V' => '𝗩',
    'W' => '𝗪',
    'X' => '𝗫',
    'Y' => '𝗬',
    'Z' => '𝗭',
    '0' => '𝟬',
    '1' => '𝟭',
    '2' => '𝟮',
    '3' => '𝟯',
    '4' => '𝟰',
    '5' => '𝟱',
    '6' => '𝟲',
    '7' => '𝟳',
    '8' => '𝟴',
    '9' => '𝟵'
  }.freeze

  SANS_BOLD_ITALIC = {
    'a' => '𝙖',
    'b' => '𝙗',
    'c' => '𝙘',
    'd' => '𝙙',
    'e' => '𝙚',
    'f' => '𝙛',
    'g' => '𝙜',
    'h' => '𝙝',
    'i' => '𝙞',
    'j' => '𝙟',
    'k' => '𝙠',
    'l' => '𝙡',
    'm' => '𝙢',
    'n' => '𝙣',
    'o' => '𝙤',
    'p' => '𝙥',
    'q' => '𝙦',
    'r' => '𝙧',
    's' => '𝙨',
    't' => '𝙩',
    'u' => '𝙪',
    'v' => '𝙫',
    'w' => '𝙬',
    'x' => '𝙭',
    'y' => '𝙮',
    'z' => '𝙯',
    'A' => '𝘼',
    'B' => '𝘽',
    'C' => '𝘾',
    'D' => '𝘿',
    'E' => '𝙀',
    'F' => '𝙁',
    'G' => '𝙂',
    'H' => '𝙃',
    'I' => '𝙄',
    'J' => '𝙅',
    'K' => '𝙆',
    'L' => '𝙇',
    'M' => '𝙈',
    'N' => '𝙉',
    'O' => '𝙊',
    'P' => '𝙋',
    'Q' => '𝙌',
    'R' => '𝙍',
    'S' => '𝙎',
    'T' => '𝙏',
    'U' => '𝙐',
    'V' => '𝙑',
    'W' => '𝙒',
    'X' => '𝙓',
    'Y' => '𝙔',
    'Z' => '𝙕',
    '0' => '0',
    '1' => '1',
    '2' => '2',
    '3' => '3',
    '4' => '4',
    '5' => '5',
    '6' => '6',
    '7' => '7',
    '8' => '8',
    '9' => '9'
  }.freeze

  SERIF_BOLD = {
    'a' => '𝐚',
    'b' => '𝐛',
    'c' => '𝐜',
    'd' => '𝐝',
    'e' => '𝐞',
    'f' => '𝐟',
    'g' => '𝐠',
    'h' => '𝐡',
    'i' => '𝐢',
    'j' => '𝐣',
    'k' => '𝐤',
    'l' => '𝐥',
    'm' => '𝐦',
    'n' => '𝐧',
    'o' => '𝐨',
    'p' => '𝐩',
    'q' => '𝐪',
    'r' => '𝐫',
    's' => '𝐬',
    't' => '𝐭',
    'u' => '𝐮',
    'v' => '𝐯',
    'w' => '𝐰',
    'x' => '𝐱',
    'y' => '𝐲',
    'z' => '𝐳',
    'A' => '𝐀',
    'B' => '𝐁',
    'C' => '𝐂',
    'D' => '𝐃',
    'E' => '𝐄',
    'F' => '𝐅',
    'G' => '𝐆',
    'H' => '𝐇',
    'I' => '𝐈',
    'J' => '𝐉',
    'K' => '𝐊',
    'L' => '𝐋',
    'M' => '𝐌',
    'N' => '𝐍',
    'O' => '𝐎',
    'P' => '𝐏',
    'Q' => '𝐐',
    'R' => '𝐑',
    'S' => '𝐒',
    'T' => '𝐓',
    'U' => '𝐔',
    'V' => '𝐕',
    'W' => '𝐖',
    'X' => '𝐗',
    'Y' => '𝐘',
    'Z' => '𝐙',
    '0' => '𝟎',
    '1' => '𝟏',
    '2' => '𝟐',
    '3' => '𝟑',
    '4' => '𝟒',
    '5' => '𝟓',
    '6' => '𝟔',
    '7' => '𝟕',
    '8' => '𝟖',
    '9' => '𝟗'
  }.freeze

  SMALL_CAPS = {
    'a' => 'ᴀ',
    'b' => 'ʙ',
    'c' => 'ᴄ',
    'd' => 'ᴅ',
    'e' => 'ᴇ',
    'f' => 'ꜰ',
    'g' => 'ɢ',
    'h' => 'ʜ',
    'i' => 'ɪ',
    'j' => 'ᴊ',
    'k' => 'ᴋ',
    'l' => 'ʟ',
    'm' => 'ᴍ',
    'n' => 'ɴ',
    'o' => 'ᴏ',
    'p' => 'ᴘ',
    'q' => 'q',
    'r' => 'ʀ',
    's' => 'ꜱ',
    't' => 'ᴛ',
    'u' => 'ᴜ',
    'v' => 'ᴠ',
    'w' => 'ᴡ',
    'x' => 'x',
    'y' => 'ʏ',
    'z' => 'ᴢ',
    'A' => 'ᴀ',
    'B' => 'ʙ',
    'C' => 'ᴄ',
    'D' => 'ᴅ',
    'E' => 'ᴇ',
    'F' => 'ꜰ',
    'G' => 'ɢ',
    'H' => 'ʜ',
    'I' => 'ɪ',
    'J' => 'ᴊ',
    'K' => 'ᴋ',
    'L' => 'ʟ',
    'M' => 'ᴍ',
    'N' => 'ɴ',
    'O' => 'ᴏ',
    'P' => 'ᴘ',
    'Q' => 'q',
    'R' => 'ʀ',
    'S' => 'ꜱ',
    'T' => 'ᴛ',
    'U' => 'ᴜ',
    'V' => 'ᴠ',
    'W' => 'ᴡ',
    'X' => 'x',
    'Y' => 'ʏ',
    'Z' => 'ᴢ'
  }.freeze

  CIRCLED = {
    'a' => 'ⓐ',
    'b' => 'ⓑ',
    'c' => 'ⓒ',
    'd' => 'ⓓ',
    'e' => 'ⓔ',
    'f' => 'ⓕ',
    'g' => 'ⓖ',
    'h' => 'ⓗ',
    'i' => 'ⓘ',
    'j' => 'ⓙ',
    'k' => 'ⓚ',
    'l' => 'ⓛ',
    'm' => 'ⓜ',
    'n' => 'ⓝ',
    'o' => 'ⓞ',
    'p' => 'ⓟ',
    'q' => 'ⓠ',
    'r' => 'ⓡ',
    's' => 'ⓢ',
    't' => 'ⓣ',
    'u' => 'ⓤ',
    'v' => 'ⓥ',
    'w' => 'ⓦ',
    'x' => 'ⓧ',
    'y' => 'ⓨ',
    'z' => 'ⓩ',
    'A' => 'Ⓐ',
    'B' => 'Ⓑ',
    'C' => 'Ⓒ',
    'D' => 'Ⓓ',
    'E' => 'Ⓔ',
    'F' => 'Ⓕ',
    'G' => 'Ⓖ',
    'H' => 'Ⓗ',
    'I' => 'Ⓘ',
    'J' => 'Ⓙ',
    'K' => 'Ⓚ',
    'L' => 'Ⓛ',
    'M' => 'Ⓜ',
    'N' => 'Ⓝ',
    'O' => 'Ⓞ',
    'P' => 'Ⓟ',
    'Q' => 'Ⓠ',
    'R' => 'Ⓡ',
    'S' => 'Ⓢ',
    'T' => 'Ⓣ',
    'U' => 'Ⓤ',
    'V' => 'Ⓥ',
    'W' => 'Ⓦ',
    'X' => 'Ⓧ',
    'Y' => 'Ⓨ',
    'Z' => 'Ⓩ',
    '0' => '⓪',
    '1' => '①',
    '2' => '②',
    '3' => '③',
    '4' => '④',
    '5' => '⑤',
    '6' => '⑥',
    '7' => '⑦',
    '8' => '⑧',
    '9' => '⑨'
  }.freeze

  CIRCLED_NEGATIVE = {
    'a' => '🅐',
    'b' => '🅑',
    'c' => '🅒',
    'd' => '🅓',
    'e' => '🅔',
    'f' => '🅕',
    'g' => '🅖',
    'h' => '🅗',
    'i' => '🅘',
    'j' => '🅙',
    'k' => '🅚',
    'l' => '🅛',
    'm' => '🅜',
    'n' => '🅝',
    'o' => '🅞',
    'p' => '🅟',
    'q' => '🅠',
    'r' => '🅡',
    's' => '🅢',
    't' => '🅣',
    'u' => '🅤',
    'v' => '🅥',
    'w' => '🅦',
    'x' => '🅧',
    'y' => '🅨',
    'z' => '🅩',
    'A' => '🅐',
    'B' => '🅑',
    'C' => '🅒',
    'D' => '🅓',
    'E' => '🅔',
    'F' => '🅕',
    'G' => '🅖',
    'H' => '🅗',
    'I' => '🅘',
    'J' => '🅙',
    'K' => '🅚',
    'L' => '🅛',
    'M' => '🅜',
    'N' => '🅝',
    'O' => '🅞',
    'P' => '🅟',
    'Q' => '🅠',
    'R' => '🅡',
    'S' => '🅢',
    'T' => '🅣',
    'U' => '🅤',
    'V' => '🅥',
    'W' => '🅦',
    'X' => '🅧',
    'Y' => '🅨',
    'Z' => '🅩',
    '0' => '⓿',
    '1' => '➊',
    '2' => '➋',
    '3' => '➌',
    '4' => '➍',
    '5' => '➎',
    '6' => '➏',
    '7' => '➐',
    '8' => '➑',
    '9' => '➒'
  }.freeze

  SQUARED = {
    'a' => '🄰',
    'b' => '🄱',
    'c' => '🄲',
    'd' => '🄳',
    'e' => '🄴',
    'f' => '🄵',
    'g' => '🄶',
    'h' => '🄷',
    'i' => '🄸',
    'j' => '🄹',
    'k' => '🄺',
    'l' => '🄻',
    'm' => '🄼',
    'n' => '🄽',
    'o' => '🄾',
    'p' => '🄿',
    'q' => '🅀',
    'r' => '🅁',
    's' => '🅂',
    't' => '🅃',
    'u' => '🅄',
    'v' => '🅅',
    'w' => '🅆',
    'x' => '🅇',
    'y' => '🅈',
    'z' => '🅉',
    'A' => '🄰',
    'B' => '🄱',
    'C' => '🄲',
    'D' => '🄳',
    'E' => '🄴',
    'F' => '🄵',
    'G' => '🄶',
    'H' => '🄷',
    'I' => '🄸',
    'J' => '🄹',
    'K' => '🄺',
    'L' => '🄻',
    'M' => '🄼',
    'N' => '🄽',
    'O' => '🄾',
    'P' => '🄿',
    'Q' => '🅀',
    'R' => '🅁',
    'S' => '🅂',
    'T' => '🅃',
    'U' => '🅄',
    'V' => '🅅',
    'W' => '🅆',
    'X' => '🅇',
    'Y' => '🅈',
    'Z' => '🅉'
  }.freeze

  SQUARED_NEGATIVE = {
    'a' => '🅰',
    'b' => '🅱',
    'c' => '🅲',
    'd' => '🅳',
    'e' => '🅴',
    'f' => '🅵',
    'g' => '🅶',
    'h' => '🅷',
    'i' => '🅸',
    'j' => '🅹',
    'k' => '🅺',
    'l' => '🅻',
    'm' => '🅼',
    'n' => '🅽',
    'o' => '🅾',
    'p' => '🅿',
    'q' => '🆀',
    'r' => '🆁',
    's' => '🆂',
    't' => '🆃',
    'u' => '🆄',
    'v' => '🆅',
    'w' => '🆆',
    'x' => '🆇',
    'y' => '🆈',
    'z' => '🆉',
    'A' => '🅰',
    'B' => '🅱',
    'C' => '🅲',
    'D' => '🅳',
    'E' => '🅴',
    'F' => '🅵',
    'G' => '🅶',
    'H' => '🅷',
    'I' => '🅸',
    'J' => '🅹',
    'K' => '🅺',
    'L' => '🅻',
    'M' => '🅼',
    'N' => '🅽',
    'O' => '🅾',
    'P' => '🅿',
    'Q' => '🆀',
    'R' => '🆁',
    'S' => '🆂',
    'T' => '🆃',
    'U' => '🆄',
    'V' => '🆅',
    'W' => '🆆',
    'X' => '🆇',
    'Y' => '🆈',
    'Z' => '🆉'
  }.freeze

  DOUBLE_STRUCK = {
    'a' => '𝕒',
    'b' => '𝕓',
    'c' => '𝕔',
    'd' => '𝕕',
    'e' => '𝕖',
    'f' => '𝕗',
    'g' => '𝕘',
    'h' => '𝕙',
    'i' => '𝕚',
    'j' => '𝕛',
    'k' => '𝕜',
    'l' => '𝕝',
    'm' => '𝕞',
    'n' => '𝕟',
    'o' => '𝕠',
    'p' => '𝕡',
    'q' => '𝕢',
    'r' => '𝕣',
    's' => '𝕤',
    't' => '𝕥',
    'u' => '𝕦',
    'v' => '𝕧',
    'w' => '𝕨',
    'x' => '𝕩',
    'y' => '𝕪',
    'z' => '𝕫',
    'A' => '𝔸',
    'B' => '𝔹',
    'C' => 'ℂ',
    'D' => '𝔻',
    'E' => '𝔼',
    'F' => '𝔽',
    'G' => '𝔾',
    'H' => 'ℍ',
    'I' => '𝕀',
    'J' => '𝕁',
    'K' => '𝕂',
    'L' => '𝕃',
    'M' => '𝕄',
    'N' => 'ℕ',
    'O' => '𝕆',
    'P' => 'ℙ',
    'Q' => 'ℚ',
    'R' => 'ℝ',
    'S' => '𝕊',
    'T' => '𝕋',
    'U' => '𝕌',
    'V' => '𝕍',
    'W' => '𝕎',
    'X' => '𝕏',
    'Y' => '𝕐',
    'Z' => 'ℤ',
    '0' => '𝟘',
    '1' => '𝟙',
    '2' => '𝟚',
    '3' => '𝟛',
    '4' => '𝟜',
    '5' => '𝟝',
    '6' => '𝟞',
    '7' => '𝟟',
    '8' => '𝟠',
    '9' => '𝟡'
  }.freeze

  def self.convert(str, style)
    case style
    when :superscript, :super
      str.gsub(/[a-zA-Z0-9]/, SUPERSCRIPT)
    when :subscript, :sub
      str.gsub(/[a-zA-Z0-9]/, SUBSCRIPT)
    when :script
      str.gsub(/[a-zA-Z0-9]/, SCRIPT)
    when :script_bold, :bold_script, :bscript
      str.gsub(/[a-zA-Z0-9]/, SCRIPT_BOLD)
    when :fullwidth, :full_width
      str.gsub(/[a-zA-Z0-9]/, FULLWIDTH)
    when :gothic
      str.gsub(/[a-zA-Z0-9]/, GOTHIC)
    when :gothic_bold, :bold_gothic, :bgothic
      str.gsub(/[a-zA-Z0-9]/, GOTHIC_BOLD)
    when :sans_italic, :italic_sans
      str.gsub(/[a-zA-Z0-9]/, SANS_ITALIC)
    when :sans_bold, :bold_sans
      str.gsub(/[a-zA-Z0-9]/, SANS_BOLD)
    when :sans_bold_italic
      str.gsub(/[a-zA-Z0-9]/, SANS_BOLD_ITALIC)
    when :serif_bold, :bold_serif
      str.gsub(/[a-zA-Z0-9]/, SERIF_BOLD)
    when :small_caps, :small
      str.gsub(/[a-zA-Z0-9]/, SMALL_CAPS)
    when :circled
      str.gsub(/[a-zA-Z0-9]/, CIRCLED)
    when :circled_negative
      str.gsub(/[a-zA-Z0-9]/, CIRCLED_NEGATIVE)
    when :squared
      str.gsub(/[a-zA-Z0-9]/, SQUARED)
    when :squared_negative
      str.gsub(/[a-zA-Z0-9]/, SQUARED_NEGATIVE)
    when :double_struck
      str.gsub(/[a-zA-Z0-9]/, DOUBLE_STRUCK)
    end
  end
end
