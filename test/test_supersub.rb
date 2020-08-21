# frozen_string_literal: true

require 'minitest/autorun'
require 'supersub'

class SuperSubTest < Minitest::Test
  def test_superscript
    %i[superscript super].each do |keyword|
      assert_equal "ᵃᵇᶜᵈᵉᶠᵍʰⁱʲᵏˡᵐⁿᵒᵖqʳˢᵗᵘᵛʷˣʸᶻᴬᴮᶜᴰᴱᶠᴳᴴᴵᴶᴷᴸᴹᴺᴼᴾQᴿˢᵀᵁⱽᵂˣʸᶻ⁰¹²³⁴⁵⁶⁷⁸⁹.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_subscript
    %i[subscript sub].each do |keyword|
      assert_equal "ₐbcdₑfgₕᵢⱼₖₗₘₙₒₚqᵣₛₜᵤᵥwₓyzₐBCDₑFGₕᵢⱼₖₗₘₙₒₚQᵣₛₜᵤᵥWₓYZ₀₁₂₃₄₅₆₇₈₉.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_script
    %i[script].each do |keyword|
      assert_equal "𝒶𝒷𝒸𝒹ℯ𝒻𝓰𝒽𝒾𝒿𝓀𝓁𝓂𝓃ℴ𝓅𝓆𝓇𝓈𝓉𝓊𝓋𝓌𝓍𝓎𝓏𝒜ℬ𝒞𝒟ℰℱ𝒢ℋℐ𝒥𝒦ℒℳ𝒩𝒪𝒫𝒬ℛ𝒮𝒯𝒰𝒱𝒲𝒳𝒴𝒵0123456789.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_script_bold
    %i[script_bold bold_script].each do |keyword|
      assert_equal "𝓪𝓫𝓬𝓭𝓮𝓯𝓰𝓱𝓲𝓳𝓴𝓵𝓶𝓷𝓸𝓹𝓺𝓻𝓼𝓽𝓾𝓿𝔀𝔁𝔂𝔃𝓐𝓑𝓒𝓓𝓔𝓕𝓖𝓗𝓘𝓙𝓚𝓛𝓜𝓝𝓞𝓟𝓠𝓡𝓢𝓣𝓤𝓥𝓦𝓧𝓨𝓩𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_fullwidth
    %i[fullwidth full_width].each do |keyword|
      assert_equal 'ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ０１２３４５６７８９．，？！＠＃＄％＾＆＊（）［］｛｝<>／＼＇"－＿＝＋｀～',
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_monospace
    %i[monospace typewriter].each do |keyword|
      assert_equal "𝚊𝚋𝚌𝚍𝚎𝚏𝚐𝚑𝚒𝚓𝚔𝚕𝚖𝚗𝚘𝚙𝚚𝚛𝚜𝚝𝚞𝚟𝚠𝚡𝚢𝚣𝙰𝙱𝙲𝙳𝙴𝙵𝙶𝙷𝙸𝙹𝙺𝙻𝙼𝙽𝙾𝙿𝚀𝚁𝚂𝚃𝚄𝚅𝚆𝚇𝚈𝚉𝟶𝟷𝟸𝟹𝟺𝟻𝟼𝟽𝟾𝟿.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_gothic
    %i[gothic fraktur].each do |keyword|
      assert_equal "𝔞𝔟𝔠𝔡𝔢𝔣𝔤𝔥𝔦𝔧𝔨𝔩𝔪𝔫𝔬𝔭𝔮𝔯𝔰𝔱𝔲𝔳𝔴𝔵𝔶𝔷𝔄𝔅ℭ𝔇𝔈𝔉𝔊ℌℑ𝔍𝔎𝔏𝔐𝔑𝔒𝔓𝔔ℜ𝔖𝔗𝔘𝔙𝔚𝔛𝔜ℨ0123456789.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_gothic_bold
    %i[gothic_bold bold_gothic fraktur_bold].each do |keyword|
      assert_equal "𝖆𝖇𝖈𝖉𝖊𝖋𝖌𝖍𝖎𝖏𝖐𝖑𝖒𝖓𝖔𝖕𝖖𝖗𝖘𝖙𝖚𝖛𝖜𝖝𝖞𝖟𝕬𝕭𝕮𝕯𝕰𝕱𝕲𝕳𝕴𝕵𝕶𝕷𝕸𝕹𝕺𝕻𝕼𝕽𝕾𝕿𝖀𝖁𝖂𝖃𝖄𝖅0123456789.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_sans
    %i[sans math_sans].each do |keyword|
      assert_equal "𝖺𝖻𝖼𝖽𝖾𝖿𝗀𝗁𝗂𝗃𝗄𝗅𝗆𝗇𝗈𝗉𝗊𝗋𝗌𝗍𝗎𝗏𝗐𝗑𝗒𝗓𝖠𝖡𝖢𝖣𝖤𝖥𝖦𝖧𝖨𝖩𝖪𝖫𝖬𝖭𝖮𝖯𝖰𝖱𝖲𝖳𝖴𝖵𝖶𝖷𝖸𝖹𝟢𝟣𝟤𝟥𝟦𝟧𝟨𝟩𝟪𝟫.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_sans_italic
    %i[sans_italic italic_sans].each do |keyword|
      assert_equal "𝘢𝘣𝘤𝘥𝘦𝘧𝘨𝘩𝘪𝘫𝘬𝘭𝘮𝘯𝘰𝘱𝘲𝘳𝘴𝘵𝘶𝘷𝘸𝘹𝘺𝘻𝘈𝘉𝘊𝘋𝘌𝘍𝘎𝘏𝘐𝘑𝘒𝘓𝘔𝘕𝘖𝘗𝘘𝘙𝘚𝘛𝘜𝘝𝘞𝘟𝘠𝘡0123456789.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_sans_bold
    %i[sans_bold].each do |keyword|
      assert_equal "𝗮𝗯𝗰𝗱𝗲𝗳𝗴𝗵𝗶𝗷𝗸𝗹𝗺𝗻𝗼𝗽𝗾𝗿𝘀𝘁𝘂𝘃𝘄𝘅𝘆𝘇𝗔𝗕𝗖𝗗𝗘𝗙𝗚𝗛𝗜𝗝𝗞𝗟𝗠𝗡𝗢𝗣𝗤𝗥𝗦𝗧𝗨𝗩𝗪𝗫𝗬𝗭𝟬𝟭𝟮𝟯𝟰𝟱𝟲𝟳𝟴𝟵.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_sans_bold_italic
    %i[sans_bold_italic].each do |keyword|
      assert_equal "𝙖𝙗𝙘𝙙𝙚𝙛𝙜𝙝𝙞𝙟𝙠𝙡𝙢𝙣𝙤𝙥𝙦𝙧𝙨𝙩𝙪𝙫𝙬𝙭𝙮𝙯𝘼𝘽𝘾𝘿𝙀𝙁𝙂𝙃𝙄𝙅𝙆𝙇𝙈𝙉𝙊𝙋𝙌𝙍𝙎𝙏𝙐𝙑𝙒𝙓𝙔𝙕0123456789.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_serif_bold
    %i[serif_bold bold_serif].each do |keyword|
      assert_equal "𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙𝟎𝟏𝟐𝟑𝟒𝟓𝟔𝟕𝟖𝟗.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_small_caps
    %i[small_caps small].each do |keyword|
      assert_equal "ᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴘǫʀꜱᴛᴜᴠᴡxʏᴢᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴘǫʀꜱᴛᴜᴠᴡxʏᴢ0123456789.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_circled
    %i[circled].each do |keyword|
      assert_equal "ⓐⓑⓒⓓⓔⓕⓖⓗⓘⓙⓚⓛⓜⓝⓞⓟⓠⓡⓢⓣⓤⓥⓦⓧⓨⓩⒶⒷⒸⒹⒺⒻⒼⒽⒾⒿⓀⓁⓂⓃⓄⓅⓆⓇⓈⓉⓊⓋⓌⓍⓎⓏ⓪①②③④⑤⑥⑦⑧⑨⨀,?!@\#$%^&⊛()[]{}⧀⧁⊘⦸'\"⊖_⊜⊕`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_circled_negative
    %i[circled_negative].each do |keyword|
      assert_equal "🅐🅑🅒🅓🅔🅕🅖🅗🅘🅙🅚🅛🅜🅝🅞🅟🅠🅡🅢🅣🅤🅥🅦🅧🅨🅩🅐🅑🅒🅓🅔🅕🅖🅗🅘🅙🅚🅛🅜🅝🅞🅟🅠🅡🅢🅣🅤🅥🅦🅧🅨🅩⓿➊➋➌➍➎➏➐➑➒.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_squared
    %i[squared].each do |keyword|
      assert_equal "🄰🄱🄲🄳🄴🄵🄶🄷🄸🄹🄺🄻🄼🄽🄾🄿🅀🅁🅂🅃🅄🅅🅆🅇🅈🅉🄰🄱🄲🄳🄴🄵🄶🄷🄸🄹🄺🄻🄼🄽🄾🄿🅀🅁🅂🅃🅄🅅🅆🅇🅈🅉0123456789⊡,?!@\#$%^&⧆()[]{}<>⧄⧅'\"⊟_=⊞`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_squared_negative
    %i[squared_negative].each do |keyword|
      assert_equal "🅰🅱🅲🅳🅴🅵🅶🅷🅸🅹🅺🅻🅼🅽🅾🅿🆀🆁🆂🆃🆄🆅🆆🆇🆈🆉🅰🅱🅲🅳🅴🅵🅶🅷🅸🅹🅺🅻🅼🅽🅾🅿🆀🆁🆂🆃🆄🆅🆆🆇🆈🆉0123456789.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_double_struck
    %i[double_struck].each do |keyword|
      assert_equal "𝕒𝕓𝕔𝕕𝕖𝕗𝕘𝕙𝕚𝕛𝕜𝕝𝕞𝕟𝕠𝕡𝕢𝕣𝕤𝕥𝕦𝕧𝕨𝕩𝕪𝕫𝔸𝔹ℂ𝔻𝔼𝔽𝔾ℍ𝕀𝕁𝕂𝕃𝕄ℕ𝕆ℙℚℝ𝕊𝕋𝕌𝕍𝕎𝕏𝕐ℤ𝟘𝟙𝟚𝟛𝟜𝟝𝟞𝟟𝟠𝟡.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_inverted
    %i[inverted invert upside_down].each do |keyword|
      assert_equal "∽`+=¯-\"'/\\><}{][)(*⅋^%$\#@¡¿,.68L95ᔭƐ210zʎxʍ𐌡nʇsɹbdouɯןʞɾıɥƃɟǝpɔqɐzʎxʍʌnʇsɹbdouɯןʞɾıɥƃɟǝpɔqɐ",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_reversed
    %i[backwards reverse reversed].each do |keyword|
      assert_equal "∽`+=_-\"'/\\<>{}[]()*&^%$\#@!⸮,.98765432߁0ZYXWVUTꙄᴙpꟼOᴎM⅃KJIHGꟻƎbↃdAzYxwvUTꙅᴙpqoᴎmlkjiHgꟻɘbↄdA",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end

  def test_cyrillic
    %i[cyrillic russian].each do |keyword|
      assert_equal "аъсdэfБЂіјкlмиорqѓѕтцvшхЎzДБCDЄFБНІЈЌLМИФРQЯЅГЦVЩЖЧZ0123456789.,?!@\#$%^&*()[]{}<>/\\'\"-_=+`~",
                   SuperSub.convert(SuperSub.test_string, keyword)
    end
  end
end
