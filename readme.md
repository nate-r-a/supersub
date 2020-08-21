# SuperSub

SuperSub is a gem that helps generate text in different styles, including superscript, subscript, small caps, Gothic, and more.

## Installing

```
gem install supersub

irb(main):001:0> require 'supersub'
```

In Rails:

```ruby
# Gemfile

gem 'supersub'
```

## Usage

```ruby
irb(main):001:0> str = "The quick brown fox jumps over the lazy dog"
=> "The quick brown fox jumps over the lazy dog"
irb(main):002:0> SuperSub.convert(str, :small)
=> "ᴛʜᴇ ǫᴜɪᴄᴋ ʙʀᴏᴡɴ ꜰᴏx ᴊᴜᴍᴘꜱ ᴏᴠᴇʀ ᴛʜᴇ ʟᴀᴢʏ ᴅᴏɢ"
```

### Styles

Note that some styles don't have exact conversions for some letters or numbers.
|Name (and aliases)|The quick brown fox jumps over the lazy dog| 1 2 3 4 5 6 7 8 9 0 |
|---|---|---|
|`:superscript`, `:super`|ᵀʰᵉ qᵘⁱᶜᵏ ᵇʳᵒʷⁿ ᶠᵒˣ ʲᵘᵐᵖˢ ᵒᵛᵉʳ ᵗʰᵉ ˡᵃᶻʸ ᵈᵒᵍ|¹ ² ³ ⁴ ⁵ ⁶ ⁷ ⁸ ⁹ ⁰|
|`:subscript`, `:sub`|ₜₕₑ qᵤᵢcₖ bᵣₒwₙ fₒₓ ⱼᵤₘₚₛ ₒᵥₑᵣ ₜₕₑ ₗₐzy dₒg|₁ ₂ ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₀|
|`:script`|𝒯𝒽ℯ 𝓆𝓊𝒾𝒸𝓀 𝒷𝓇ℴ𝓌𝓃 𝒻ℴ𝓍 𝒿𝓊𝓂𝓅𝓈 ℴ𝓋ℯ𝓇 𝓉𝒽ℯ 𝓁𝒶𝓏𝓎 𝒹ℴ𝓰|1 2 3 4 5 6 7 8 9 0|
|`:script_bold`, `:bold_script`|𝓣𝓱𝓮 𝓺𝓾𝓲𝓬𝓴 𝓫𝓻𝓸𝔀𝓷 𝓯𝓸𝔁 𝓳𝓾𝓶𝓹𝓼 𝓸𝓿𝓮𝓻 𝓽𝓱𝓮 𝓵𝓪𝔃𝔂 𝓭𝓸𝓰|𝟏 𝟐 𝟑 𝟒 𝟓 𝟔 𝟕 𝟖 𝟗 𝟎|
|`:fullwidth`, `:full_width`|Ｔｈｅ ｑｕｉｃｋ ｂｒｏｗｎ ｆｏｘ ｊｕｍｐｓ ｏｖｅｒ ｔｈｅ ｌａｚｙ ｄｏｇ|１ ２ ３ ４ ５ ６ ７ ８ ９ ０|
|`:monospace`, `:typewriter`|𝚃𝚑𝚎 𝚚𝚞𝚒𝚌𝚔 𝚋𝚛𝚘𝚠𝚗 𝚏𝚘𝚡 𝚓𝚞𝚖𝚙𝚜 𝚘𝚟𝚎𝚛 𝚝𝚑𝚎 𝚕𝚊𝚣𝚢 𝚍𝚘𝚐|𝟷 𝟸 𝟹 𝟺 𝟻 𝟼 𝟽 𝟾 𝟿 𝟶|
|`:gothic`, `:fraktur`|𝔗𝔥𝔢 𝔮𝔲𝔦𝔠𝔨 𝔟𝔯𝔬𝔴𝔫 𝔣𝔬𝔵 𝔧𝔲𝔪𝔭𝔰 𝔬𝔳𝔢𝔯 𝔱𝔥𝔢 𝔩𝔞𝔷𝔶 𝔡𝔬𝔤|1 2 3 4 5 6 7 8 9 0|
|`:gothic_bold`, `:bold_gothic`, `:fraktur_bold`|𝕿𝖍𝖊 𝖖𝖚𝖎𝖈𝖐 𝖇𝖗𝖔𝖜𝖓 𝖋𝖔𝖝 𝖏𝖚𝖒𝖕𝖘 𝖔𝖛𝖊𝖗 𝖙𝖍𝖊 𝖑𝖆𝖟𝖞 𝖉𝖔𝖌|1 2 3 4 5 6 7 8 9 0|
|`:sans`, `:math_sans`|𝖳𝗁𝖾 𝗊𝗎𝗂𝖼𝗄 𝖻𝗋𝗈𝗐𝗇 𝖿𝗈𝗑 𝗃𝗎𝗆𝗉𝗌 𝗈𝗏𝖾𝗋 𝗍𝗁𝖾 𝗅𝖺𝗓𝗒 𝖽𝗈𝗀|𝟣 𝟤 𝟥 𝟦 𝟧 𝟨 𝟩 𝟪 𝟫 𝟢|
|`:sans_italic`, `i:talic_sans`|𝘛𝘩𝘦 𝘲𝘶𝘪𝘤𝘬 𝘣𝘳𝘰𝘸𝘯 𝘧𝘰𝘹 𝘫𝘶𝘮𝘱𝘴 𝘰𝘷𝘦𝘳 𝘵𝘩𝘦 𝘭𝘢𝘻𝘺 𝘥𝘰𝘨|1 2 3 4 5 6 7 8 9 0|
|`:sans_bold`, `:bold_sans`|𝗧𝗵𝗲 𝗾𝘂𝗶𝗰𝗸 𝗯𝗿𝗼𝘄𝗻 𝗳𝗼𝘅 𝗷𝘂𝗺𝗽𝘀 𝗼𝘃𝗲𝗿 𝘁𝗵𝗲 𝗹𝗮𝘇𝘆 𝗱𝗼𝗴|𝟭 𝟮 𝟯 𝟰 𝟱 𝟲 𝟳 𝟴 𝟵 𝟬|
|`:sans_bold_italic`|𝙏𝙝𝙚 𝙦𝙪𝙞𝙘𝙠 𝙗𝙧𝙤𝙬𝙣 𝙛𝙤𝙭 𝙟𝙪𝙢𝙥𝙨 𝙤𝙫𝙚𝙧 𝙩𝙝𝙚 𝙡𝙖𝙯𝙮 𝙙𝙤𝙜|1 2 3 4 5 6 7 8 9 0|
|`:serif_bold`, `:bold_serif`|𝐓𝐡𝐞 𝐪𝐮𝐢𝐜𝐤 𝐛𝐫𝐨𝐰𝐧 𝐟𝐨𝐱 𝐣𝐮𝐦𝐩𝐬 𝐨𝐯𝐞𝐫 𝐭𝐡𝐞 𝐥𝐚𝐳𝐲 𝐝𝐨𝐠|𝟏 𝟐 𝟑 𝟒 𝟓 𝟔 𝟕 𝟖 𝟗 𝟎|
|`:small_caps`, `:small`|ᴛʜᴇ ǫᴜɪᴄᴋ ʙʀᴏᴡɴ ꜰᴏx ᴊᴜᴍᴘꜱ ᴏᴠᴇʀ ᴛʜᴇ ʟᴀᴢʏ ᴅᴏɢ|1 2 3 4 5 6 7 8 9 0|
|`:circled`|Ⓣⓗⓔ ⓠⓤⓘⓒⓚ ⓑⓡⓞⓦⓝ ⓕⓞⓧ ⓙⓤⓜⓟⓢ ⓞⓥⓔⓡ ⓣⓗⓔ ⓛⓐⓩⓨ ⓓⓞⓖ|① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨ ⓪|
|`:circled_negative`|🅣🅗🅔 🅠🅤🅘🅒🅚 🅑🅡🅞🅦🅝 🅕🅞🅧 🅙🅤🅜🅟🅢 🅞🅥🅔🅡 🅣🅗🅔 🅛🅐🅩🅨 🅓🅞🅖|➊ ➋ ➌ ➍ ➎ ➏ ➐ ➑ ➒ ⓿|
|`:squared`|🅃🄷🄴 🅀🅄🄸🄲🄺 🄱🅁🄾🅆🄽 🄵🄾🅇 🄹🅄🄼🄿🅂 🄾🅅🄴🅁 🅃🄷🄴 🄻🄰🅉🅈 🄳🄾🄶|1 2 3 4 5 6 7 8 9 0|
|`:squared_negative`|🆃🅷🅴 🆀🆄🅸🅲🅺 🅱🆁🅾🆆🅽 🅵🅾🆇 🅹🆄🅼🅿🆂 🅾🆅🅴🆁 🆃🅷🅴 🅻🅰🆉🆈 🅳🅾🅶|1 2 3 4 5 6 7 8 9 0|
|`:double_struck`|𝕋𝕙𝕖 𝕢𝕦𝕚𝕔𝕜 𝕓𝕣𝕠𝕨𝕟 𝕗𝕠𝕩 𝕛𝕦𝕞𝕡𝕤 𝕠𝕧𝕖𝕣 𝕥𝕙𝕖 𝕝𝕒𝕫𝕪 𝕕𝕠𝕘|𝟙 𝟚 𝟛 𝟜 𝟝 𝟞 𝟟 𝟠 𝟡 𝟘|
|`:inverted`, `:invert`, `:upside_down`|ƃop ʎzɐן ǝɥʇ ɹǝʌo sdɯnɾ xoɟ uʍoɹq ʞɔınb ǝɥʇ|0 6 8 Ɫ 9 5 ᔭ Ɛ 2 1|
|`:reverse`, `:reversed`, `:backwards`|gob YzAl ɘHT ᴙɘvo ꙅqmUj xoꟻ ᴎwoᴙd kↄiUp ɘHT|0 9 8 7 6 5 4 3 2 ߁|
|`:cyrillic`, `:russian`|ГЂэ qціск ъѓоши fох јцмрѕ оvэѓ тЂэ lаzЎ dоБ|1 2 3 4 5 6 7 8 9 0|
