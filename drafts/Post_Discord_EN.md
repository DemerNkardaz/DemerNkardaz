# DSL KeyPad: A tool for typing more than 4,700 Unicode characters directly from the keyboard

//

# 0

This tool extends the range of characters available for input directly from the keyboard and primarily focuses on Latin and Cyrillic scripts, but is not limited to them. You only need to have Russian and English keyboard layouts installed in your system to be able to write in multiple languages, for example:

- Қазақ тілі, Хуэйзў йүян, Забони тоҷикӣ, Йағнобӣ зивок, Аԥсуа бызшәа, Авар мацӏ, Українська мова, Словѣньскъ ѩꙁꙑкъ, Црногорски језик, Лимба Рꙋмѫнѣскъ, Итәнмәӈин крвэԓхатас, Даһур Усүүэ, Азәрбајҹанҹа, Башҡорт теле, Тэлэңгэт, Чӑваш чӗлхи…

- Ægnlisċ sprǣċe, Français, Tiếng Việt, Hànyǔ Pīnyīn, Norrœnt mál, Limba Română, Español, Język polski, Čeština, Bokmål, Tamaziɣt, Türkçe, Sää'mǩiõll…

The tool implements support for inputting various writing systems, for example: Runes, Glagolitic, Old Turkic, Old Permic, Phoenician, Ancient North Arabian etc. An International Phonetic Alphabet input mode is also available.

The project is not complete, but can already be used fully.

You can download it from [GitHub](https://github.com/DemerNkardaz/DSL-KeyPad) releases or [SourceForge](https://sourceforge.net/projects/dsl-keypad/).

# 1

**Short list of features**

- Many keyboard bindings, different for Russian and English layouts (`RAlt + F1 toggle on/off`), e.g.: `RAlt + A` → Ă, `RAlt + O` → Ø; `RAlt + Ф` → Ѳ, `RAlt + Щ` → Ҩ. Supports user-defined bindings.
- "Compositing" mode (`RAlt×2`) that allows converting symbol sequences into another symbol, e.g.: `TH` → Þ, `WY` → Ƿ, `1/10` → ⅒ etc. Has a tooltip with suggestions of matching sequences. Supports user-defined sequences.
- "Alternative modes" (`LWin + LAlt + S`), a feature that supports the aforementioned writing systems.
- "Glyph variations" (`LWin + LAlt + A`), allows typing variants of characters, e.g.: A → ᴬ𝐀𝘼𝙰𝕬𝓐 etc.
- "TELEX/VNI-like modes" (`LWin + LAlt + D`), simplifies typing of Vietnamese, Jarai and Pinyin with input similar to Vietnamese Telex and VNI layouts.
- Switching between typing Unicode character → HTML → LaTeX command (`RAlt + RShift + F1`), e.g.: `Ă` → `&Abreve;` → `\u{A}`. Has a tooltip with suggestions of matching sequences.
- Search and insert symbols by "tags" (`LWin + LAlt + F`), e.g.: prompt "plus minus" gives "±".
- "Internal" keyboard layouts with support for user-defined layouts.
- Mini-modes for typing super/subscript (`LWin + LAlt + ↑/↓`) digits and roman numerals (`LWin + LAlt + RShift + ↑`).
- Favorites system that adds favorited symbols to the "Favorites" tab in the main GUI and shows their sequences in the "Composite" mode tooltip.
- Support for modifications. For example, you are allowed to add a new "Alternative mode" with new symbols (e.g., "Old Mongolian").
- And other, less significant features…
- GUI Windows: Lists of symbols (binds, sequences etc.) and help (`LWin + LAlt + Home`); Glyph Variations; User-defined sequences; Mods; “Legend”; Settings (`RCtrl + F9`) etc. All of these are available to be opened from the tray context menu.

# 2

**Compositing mode**

Inspired by the Compose key from Linux and WinCompose. Converts a sequence of symbols into something else.

Activated by double-pressing `RAlt`. User input will be displayed in a tooltip along with matching suggestions and a list of favorite symbol recipes.

Compose mode triggers on the first exact recipe match. This is both a plus and a slight minus — such behavior won’t allow typing, for example, `Ǣ` due to the automatic triggering of `AE` → `Æ`. To solve this problem, I introduced a hold mode (`Pause` key), in which composition waits for `Enter` to be pressed or for the hold to be released.

In addition to hold mode, you can use the grave “operator” `` [ ` ] ``. It doesn’t cancel automatic triggering, but saves its result in the active composition variable instead of sending it to the application window. This allows continuing sequences if there are recipes that start with the obtained result. `Ǣ` = `` A`E → Æ → Æ<MACRON>  ``.

General key list:

- `Enter` — confirm input.
- `Escape` — cancel compose mode.
- `Backspace` — delete the last character.
- `Insert` — paste clipboard contents.
- `Pause` — toggle hold mode.

# 3

**Operators**

- Grave `` ` `` — described above.
- (`NUMBER`) — when starting input with this operator, the recipe result will be duplicated the specified number of times, “(5) TH” → “ÞÞÞÞÞ”.
- (`~`) — when starting input with this operator, you can enter whole words within which recipes will be processed, “`(~) T<COMMA>ara Roma<CIRCUMFLEX>neasca<BREVE>`” → “Țara Românească“.
- (`NUMBER~`) — combination of the previous operators.
- `##` — allows preventing processing of unwanted sequences, “`(~) tho<ACUTE>rr” → “þórr”, “(\~) t##ho<ACUTE>rr`” → “thórr”.

**Unicode Codepoint and Alt-code Input**

Compose mode can be used to insert symbols by their codes. Input starts with U+/Ю+ or A+/А+, followed by the value. You can specify multiple values by separating them with spaces.

Alt-codes are affected by the active layout language: numbers 128–255 and 0128–0255 use codepages 850/Windows−1252 for English layout, 866/Windows−1251 for Russian, 737/Windows−1253 for Greek, Windows−1258 for Vietnamese.

Alt-codes can be entered in hexadecimal format: `A+0B9` = `A+0185` → № (Windows−1251). For this, the input must contain a letter from the A–F range. The upper limit is A+FF (A+255).

# 4

**User-defined bindings**

For creating bindings, you need to place `<FILE>.JSON (UTF-8)` in `DSLKeyPad\User\profile-<PROFILE>\CustomBindings\` with the same structure:

```json
{
  "info": {
    // Preset name
    "name": "Esoteric Binds"
  },
  // Lists of binds, as for single keys
  // and for keys with modifier keys
  "binds": {
    "2:LangFlat": ["digit_2::superscript×20", "digit_1::superscript×10"],
    "A": ["alchemical_brimstone", "alchemical_brimstone_philosophers"],
    "<^>!A": "alchemical_brimstone_black",
    "<^>!B": ["astrological_proserpina"],
    ">+A:Caps": ["astrological_neptune", "astrological_uranus"],
    "<^>!И": ["astrological_chiron"],
    "<^>!Y": [
      "@ඞʂ🍋",
      "@Сижу за решёткой в темнице сырой.\nВскормленный в неволе орёл молодой,\n…"
    ]
  }
}
```

User-defined bindings supports the following formats:

```json
		// “Flat” (for all languages)
		<"MODIFIER?KEY">: <"VAL">
		// For a specific language
		<"MODIFIER?KEY">: [<"VAL">]
		// Same as above, but different values for active and inactive CapsLock
		<"MODIFIER?KEY">: [<"VAL">, <"VAL">]
		// “Flat” variant
		<"MODIFIER?KEY:Caps">: [<"VAL">, <"VAL">]
		// Binding where the first variant will refer to the English keyboard layout,
		// and the second to the Russian one
		<"MODIFIER?KEY:LangFlat">: [<"VAL">, <"VAL">]
```

And the following values:

```json
		// Just text
		"@<TEXT>"
		// Reference to an entry in the library
		"<ENTRY NAME>::<VARIANT>×<COUNT>"
```

Details about reference format see in the “Reference format” message under “User-defined sequences”.

**Note:** for `RAlt` you need to use`<^>!`.

After creating a preset, it can be selected in the settings window or after restarting the program, or after pressing the 🔁 button next to the dropdown list in the settings window.

# 5

**User-defined sequences**

You can create/edit custom sequences, called “My Recipes“, in the same way as for bindings or with a dedicated recipe-creation GUI. Custom recipes may contain large multiline text as a result.

The main file is presented in JSON format, “`DSLKeyPad\User\profile-<PROFILE>\CustomRecipes.json`”. You can also add additional recipe files in INI (UTF-16 LE) or JSON (UTF-8) formats by placing them in the “`DSLKeyPad\User\profile-<PROFILE>\CustomRecipes\`” directory. Recipes from there will be automatically loaded at program startup or when pressing the refresh button in the “My Recipes” window.

Loading sequences from XCompose format files is supported. They must be placed in the “`DSLKeyPad\User\profile-<PROFILE>\XCompose\`” directory. The file must end with the “`.XCompose`” extension.

**Note:** Only simple XCompose sequences are supported, such as “`<Multi_key> <g> <r> <i> <n> : "😁"`” or “`<Multi_key> <U1100> <U1100> : "ᄁ" U1101 # HANGUL CHOSEONG SSANGKIYEOK`”. On first launch, for demonstration purposes, a “demo.XCompose” file is created at the specified path with the sequence “`<Multi_key> <0> <0> : "∞"`”.

# 6

Example of an additional recipe file:

**INI:**

```ini
[alchemical_sulfuric_acid]
name=ru:Алх. Серная кислота|en:Alc. Sulfuric Acid
recipe=alc sulf acid
result=🜊🜖
[chemical_sulfuric_acid]
name=ru:Серная кислота|en:Sulfuric Acid
recipe=chem sulf acid|H2SO4
result=H₂SO₄
[emoji_castle]
name=ru:Сиро|en:Shiro
recipe=cls|змк
result=🏯
; [custom_entry_name] — Entry name, can contain only “a–Z” and “_” characters
; name — Display name in the custom recipes window. Can be a simple
; string or include localization for supported languages
; recipe — The recipe itself, can be a simple string or contain multiple recipes
; separated by “|”. You can use references to other entries as ${entry_name}
; result — Recipe result. Can also contain ${references}

; the same with reference examples:
[alchemical_sulfuric_acid]
name=ru:Алх. Серная кислота|en:Alc. Sulfuric Acid
recipe=alc sulf acid
result=${alchemical_acid_vinegar}${alchemical_vitriol_1}
[chemical_sulfuric_acid]
name=ru:Серная кислота|en:Sulfuric Acid
recipe=chem sulf acid|H2SO4
result=H${digit_2::subscript}SO${digit_4::subscript}
```

# 7

**JSON:**

```json
[
  "alchemical_sulfuric_acid",
  {
    "name": "ru:Алх. Серная кислота|en:Alc. Sulfuric Acid",
    "recipe": "alc sulf acid",
    // Representing the result as an array
    // for convenient insertion and editing
    // of multiline values, for example:

    // [
    //    "First line\n",
    //    "Second line\n",
    //    "Third line"
    // ]
    "result": ["🜊🜖"]
  },
  "chemical_sulfuric_acid",
  {
    "name": "ru:Серная кислота|en:Sulfuric Acid",
    "recipe": "chem sulf acid|H2SO4",
    "result": ["H₂SO₄"]
  },
  "emoji_castle",
  {
    "name": "ru:Сиро|en:Shiro",
    "recipe": "cls|змк",
    "result": ["🏯"]
  },
  // With references
  "alchemical_sulfuric_acid",
  {
    "name": "ru:Алх. Серная кислота|en:Alc. Sulfuric Acid",
    "recipe": "alc sulf acid",
    "result": ["${alchemical_acid_vinegar}${alchemical_vitriol_1}"]
  },
  "chemical_sulfuric_acid",
  {
    "name": "ru:Серная кислота|en:Sulfuric Acid",
    "recipe": "chem sulf acid|H2SO4",
    "result": ["H${digit_2::subscript}SO${digit_4::subscript}"]
  }
]
```

References can be used between custom recipes for creating dependent recipes, for example:

```ini
[white_heart]
name=Белое сердце
recipe=бср|whr
result=🤍
[white_heart_triple]
name=Три белых сердца
recipe=3бср|3whr
result=${white_heart×3} ; inserts the result of the first recipe three times
```

You can add several parameters for all recipes in file in following way:

```ini
[options]
; will be added at the beginning of recipes
prefix=<PREFIX>
; disable adding a space after the prefix
no_whitespace=1
; … recipes
```

```json
[
	"options": {
		"prefix": <"PREFIX">,
		"no_whitespace": 1
	},
	// … recipes
]
```

You can use multiple prefixes for multiple recipes:

```ini
[options]
prefix=эмодзи|emoji
[recipe_name]
name=Лёд
; will require input of “эмодзи лёд” or “emoji ice”
recipe=лёд|ice
result=🧊
```

# 8

**Reference format**

`${<ENTRY NAME>::<VARIANT>×<COUNT>}` refers to an entry in the library if it exists.

With “`::`” you can specify a “Glyph variant”, e.g.: `${digit_1}` → “1”, then `${digit_1::superscript}` → “¹”.

With “`×`” at the end you can specify a number of repetitions, e.g. `${digit_1::superscript×10}` → “¹¹¹¹¹¹¹¹¹¹”.

With “`\/`” you can specify multiple entries by their full or partial names, e.g.: `${lat_c_let_\b,o,l,d/::bold}` → 𝐁𝐎𝐋𝐃, `${\hel,lat/_c_let_a_alpha}` → ΑⱭ, `${\nabla,delta,integral,square_root/}` → ∇∆∫√.

# 9

**Alternative modes**

`LWin + LAlt + S` opens a selector.

The list of included scripts:

- [Hellenic](https://en.wikipedia.org/wiki/Greek_alphabet) (Modern × Ancient Greek)
- [Germanic Runes](https://en.wikipedia.org/wiki/Runes) (Elder Futhark, Anglo-Saxon Futhork, Younger Futhark, Medieval Runes, Runic Almanac, Franks Casket Runes) + three Tolkien runes.
- [Glagolitic](https://en.wikipedia.org/wiki/Glagolitic_script).
- [Old Turkic](https://en.wikipedia.org/wiki/Old_Turkic_script).
- [Old Permic](https://en.wikipedia.org/wiki/Old_Permic_script).
- [Old Hungarian](https://en.wikipedia.org/wiki/Old_Hungarian_script).
- etc… all of them are shown in the screenshot.

**Note:** Their bindings are based on Latin and Cyrillic (Glagolitic, Old Permic) layouts, i.e. switching the internal layout will affect them.

**Glyph variations**

`LWin + LAlt + A` opens a selector.

# 10

**TELEX/VNI-like modes**

`LWin + LAlt + D` opens a selector; `RAlt + F2` and `RAlt + RShift + F2` is a dedicated shortcuts for Vietnamese × Jarai and for Pinyin.

Just showcase.

More about Telex and VNI:

https://en.wikipedia.org/wiki/Telex_(input_method)

https://en.wikipedia.org/wiki/VNI

# 11

**Search**

`LWin + LAlt + F`

As already mentioned — each symbol has a set of “tags”, and they can be quite long. For example, “`hellenic small letter omega with psili, perispomeni and ypogegrammeni`” will give the symbol “ᾦ”.

You don't have to enter the full tag — “`omeg ps pe yp`” will give the same “ᾦ”. However, the shorter the query, the less precise the result will be. You can enter multiple queries separated by commas:

- “`des dee, !des dee, lamb, !lamb`” → “`𐐔𐐼Λλ`”
- “`ref, obe, psms, msps`” → “`※÷±∓`”

Instead of a tag, you can enter an entry name, for example “`hel_c_let_l_lambda`” → “`Λ`”.

You can use regular expressions, for example:

- “`fut.*?\s+\S+al`” (searching for a tag with any characters and spaces between fut and al) → “ᚺ” (Hagalaz rune), full tag: “`germanic rune elder futhark Hagalaz`”.
- “`az$`” (searching for a tag ending with az) → “ᛞ” (Mannaz rune), full tag: “`germanic rune elder futhark Mannaz`”.
- “`^фра`” (searching for a tag starting with фра) → “₣” (Franc).

Specifying glyph variations is also supported by adding `::<VARIANT>` at the end of the query:

- “`lig ae, lig ae::smallCapital, !latin h::fraktur`” → “`Æᴁ𝔥`”

In addition to symbol search, the query input window supports calling some methods/functions:

- `\` or `/Reload` — restarts the program.
- `/Exit` — closes the program.
- `/ChrLib.Print` — creates and opens a “`printed_pairs.html`” file with a listing of local library entries in “symbol — entry name” format.
- `/MyRecipes.Update` — re-initializes user recipes.
- `/Update.Get` or `/Update.Repair` — get an update or repair the current version.
- `%globalInstances.crafter.Start("Compose")%` — similar to RAlt×2, activates composition mode…
- `/KbdBinder.Init` — re-initializes layouts and bindings.

# 12

**Internal Keyboard Layouts**

The program uses binding to key scan codes, which is why changing the system layout does not change the position of the program’s bindings. “Internal layouts” exist to fix this.

For Latin, the following layouts are available: QWERTY, Colemak, Dvorak. For Cyrillic: ЙЦУКЕН, ЙІУКЕН (1907), Диктор. Layouts may differ from their originals.

If the program doesn’t have a suitable layout — you can create one yourself through `<FILE>.JSON (UTF-8)` markup in “`DSLKeyPad\User\profile-<PROFILE>\CustomLayouts\`” with the following structure:

```json
{
  "info": {
    // name
    "name": "AZERTY",
    // latin if for English, cyrillic if for Russian language
    "type": "latin"
  },
  "keys": {
    // Supports both direct scan code specification
    "A": "SC010",
    "Z": "SC011",
    // and key name on QWERTY/ЙЦУКЕН layout
    "E": "E",
    "R": "R",
    "T": "T",
    "Y": "Y",
    "CircumflexAccent": "LeftBracket",
    "Dollar": "RightBracket",
    "SmallUWithGrave": "Apostrophe"
    // etc…
  },
  "binds": {
    // List of key bindings (is not necessary)
    "Flat": {
      // The [lazy] prefix indicates that the binding will be enabled
      // only when “Remapping” is active
      "[lazy]1": ["[digit_1,lat_s_lig_et]"], // 1&
      "[lazy]CircumflexAccent": ["[diaeresis,circumflex]"],
      "[lazy]Dollar": ["[wallet_franc,wallet_dollar]"], // ₣$
      "[lazy]SmallUWithGrave": ["[percent,lat_s_let_u__grave]"], // %ù
      "[lazy]Asterisk": ["[hel_s_let_m_mu,asterisk]"], // μ*
      "[lazy]Exclamation": ["[section,exclamation]"] // §!
      // etc…
    },
    // List of bindings with modifiers
    "Moded": {
      "1": { "<+": ["[lat_s_lig_et,digit_1]"] },
      "E": { "<^>!": ["wallet_eur"] }, // €
      "Dollar": { "<^>!": ["wallet_sign"] } // ¤
      // etc…
    }
  }
}
```

# 13

**Modifications**

Third-party AHK files can be placed in the “`DSLKeyPad\Mods\`” directory as “mods” for the program. With modifications, you can significantly customize the program, for example, adding even a hundred new “Alternative Input” modes or introducing an entirely new, independent feature.

To create a mod, you need to create a folder with the following basic structure:

```
Mods/
└── <MOD NAME>/
    ├── index.ahk
    ├── options.ini
    └── preview.(ico|jpg|png) (optional file)
```

The `index.ahk` file will contain the mod’s logic and you can connect other AHK files to it via `#Include` (no different from an independent AHK script).

The `options.ini` file (UTF−16 LE):

```ini
[options]
title=<TITLE>
version=<VERSION>
type=<LOAD TYPE>
author=<AUTHOR> ; (optionally add @<LINK>)
url=<MOD PAGE LINK>
description=<DESCRIPTION>
; Localized variants
[ru-RU] ; (or other language code)
title=…
author=…
description=…
```

The load type can be `pre_init` (for loading before main initialization) or `post_init` (for loading after it).

Mods are automatically picked up. After adding a new mod, you should wait 5 seconds before restarting the program.

You can toggle mods through the GUI: Tray Menu → Modifications.

PS. If you need to get the path to your mod's folder — it is automatically saved in `mods["<MOD NAME>"]`.

PSS. Mods are not isolated scripts from each other, i.e. conflicts in variable and class names are possible.

More detailed modding guide will be created in the future with development of the documentation website. You can find more complex mod example [here](https://github.com/DemerNkardaz/DSL-KeyPad-Custom-Files/tree/master/Mods/Old%20Mongolian%20Sample%20Mod), but `index.ahk` have comments on Russian and other files has no comments.

# 14

**Notes**

- Tool eats 140–180 MB of RAM.
- Limited to English and Russian keyboard layouts (for example when you switches to Japanese, then all bindings will be automatically disabled and restored when you switch back to En/Ru). Can work with Greek layout, but “Hellenic” alternative mode will be automatically enabled.

//
