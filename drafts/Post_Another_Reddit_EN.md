I hope it’s allowed to post this here? (_Discussing Unicode, Unicode characters and_ **_Unicode-related tools_**). Sorry if I got it wrong.

It’s called “DSL KeyPad” and allows you to type many Latin & Cyrillic characters, but it’s not limited to them.

[The topic on AHK forum (details with screenshots and code etc.)](https://www.autohotkey.com/boards/viewtopic.php?f=83&t=138452)

Project pages (with downloads): [GitHub](https://github.com/DemerNkardaz/DSL-KeyPad) / [SourceForge](https://sourceforge.net/projects/dsl-keypad/)

The project is not complete, but can already be used fully.

You only need to have Russian and English keyboard layouts installed in your system to be able to write in multiple languages, for example:

- Қазақ тілі, Хуэйзў йүян, Забони тоҷикӣ, Йағнобӣ зивок, Аԥсуа бызшәа (or Аҧсуа бызꚗа), Авар мацӏ, Українська мова, Словѣньскъ ѩꙁꙑкъ, Црногорски језик, Лимба Рꙋмѫнѣскъ, Итәнмәӈин крвэԓхатас, Даһур Усүүэ, Азәрбајҹанҹа, Башҡорт теле, Тэлэңгэт, Чӑваш чӗлхи…
- Ægnlisċ sprǣċe, Français, Tiếng Việt, Hànyǔ Pīnyīn, Norrœnt mál, Limba Română, Español, Język polski, Čeština, Bokmål, Tamaziɣt, Türkçe, Sää'mǩiõll…

Additionally, it supports typing in several scripts:

- Germanic Runes
- Glagolitic
- Old Turkic
- Old Permic
- Old Hungarian
- Gothic
- Old Italic
- Phoenician
- Ancient South Arabian
- Ancient North Arabian
- Carian
- Lycian
- Lydian
- Sidetic\* (wait for Unicode 17 to use it)
- Cypriot Syllabary
- Tifinagh
- Ugaritic
- Old Persian
- IPA
- Deseret
- Shavian

# Short list of features

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
