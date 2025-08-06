[AHK Forum topic with a lot of details](https://www.autohotkey.com/boards/viewtopic.php?f=83&t=138452)

I’ve made a tool for myself to access a wide range of Unicode symbols for my text‑related hobbies, and I hope this tool will be useful for other people as well.

It includes a few features that allow you to input all of these symbols.

You only need to have Russian and English keyboard layouts installed in your system to be able to write in multiple languages, for example:

- Қазақ тілі, Хуэйзў йүян, Забони тоҷикӣ, Йағнобӣ зивок, Аԥсуа бызшәа, Авар мацӏ, Українська мова, Словѣньскъ ѩꙁꙑкъ, Црногорски језик, Лимба Рꙋмѫнѣскъ, Итәнмәӈин крвэԓхатас, Даһур Усүүэ, Азәрбајҹанҹа, Башҡорт теле, Тэлэңгэт, Чӑваш чӗлхи…

- Ægnlisċ sprǣċe, Français, Tiếng Việt, Hànyǔ Pīnyīn, Norrœnt mál, Limba Română, Español, Język polski, Čeština, Bokmål, Tamaziɣt, Türkçe, Sää'mǩiõll…

The tool implements support for inputting various writing systems, for example: Runes, Glagolitic, Old Turkic, Old Permic, Phoenician, Ancient North Arabian etc. An International Phonetic Alphabet input mode is also available.

**Short list of features**

- Many keyboard bindings, different for Russian and English layouts (`RAlt + F1 toggle on/off`), e.g.: `RAlt + A` → Ă, `RAlt + O` → Ø; `RAlt + Ф` → Ѳ, `RAlt + Щ` → Ҩ. Supports user-defined bindings.
- “Compositing” mode (`RAlt×2`) that allows converting symbol sequences into another symbol, e.g.: `TH` → Þ, `WY` → Ƿ, `1/10` → ⅒ etc. Has a tooltip with suggestions of matching sequences. Supports user-defined sequences.
- “Alternative modes” (`LWin + LAlt + S`), a feature that supports the aforementioned writing systems.
- “Glyph variations” (`LWin + LAlt + A`), allows typing variants of characters, e.g.: A → ᴬ𝐀𝘼𝙰𝕬𝓐 etc.
- “TELEX/VNI-like modes” (`LWin + LAlt + D`), simplifies typing of Vietnamese, Jarai and Pinyin with input similar to Vietnamese Telex and VNI layouts.
- Switching between typing Unicode character → HTML → LaTeX command (`RAlt + RShift + F1`), e.g.: `Ă` → `&Abreve;` → `\u{A}`. Has a tooltip with suggestions of matching sequences.
- Search and insert symbols by “tags” (`LWin + LAlt + F`), e.g.: prompt “plus minus” gives “±”.
- “Internal” keyboard layouts with support for user-defined layouts.
- Mini-modes for typing super/subscript (`LWin + LAlt + ↑/↓`) digits and roman numerals (`LWin + LAlt + RShift + ↑`).
- Favorites system that adds favorited symbols to the “Favorites” tab in the main GUI and shows their sequences in the “Composite” mode tooltip.
- Support for modifications. For example, you are allowed to add a new “Alternative mode” with new symbols (e.g., “Old Mongolian”).
- And other, less significant features…
- GUI Windows: Lists of symbols (binds, sequences etc.) and help (`LWin + LAlt + Home`); Glyph Variations; User-defined sequences; Mods; “Legend”; Settings (`RCtrl + F9`) etc. All of these are available to be opened from the tray context menu.
