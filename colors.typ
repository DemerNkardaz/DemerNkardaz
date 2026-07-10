#set page(
	width: auto,
	height: auto,
	margin: (x: 1pt, y: 0pt),
	fill: none
)

#show: text.with(
	size: 50pt,
	font: ("PT Sans", "Yuji Boku")
)

#let kanji(size: none, body) = {
	text(
		size: if size != none { size } else { 1.7em },
		body
	)
}

#let swatches = (
	black-white: (
		"#fff",
		"#fefefe",
		"#eee",
		"#bfbcb8",
		"#adadad",
		"#333",
		"#222",
	),
	yellow: (
		"#ffca43",
		"#fbca4d",
		"#fedb1d",
		"#f8d826",
		"#fee036",
		"#dfc452",
		"#e1c16e",
		"#e2b041",
		"#e1aa4b",
		"#f0aa14",
		"#e2ad0c",
		"#e08a1e",
		"#c7800c",
		"#dd9159",
	),
	green: (
		"#3ee492",
		"#31d294",
		"#1bb586",
		"#3ff7c3",
		"#48f4f6",
		"#2fcbca",
		"#007a86",
		"#01877a",
		"#39998e",
		"#baf1b3",
		"#b5d2b3",
	),
	red: (
		"#dc4032",
		("#dc5034", "Terracotta", "#fff"),
		"#f20058",
		"#fd3d2e",
		"#ff0040",
	),
	japanese: (
		(title: kanji[日本]),
		("#ad4d00", [#kanji[黄櫨染] \ Kōrozen], "#fff"),
		("#d0104c", [#kanji[唐紅] \ Karakurenai], "#fff"),
		("#e87a90", [#kanji[薄紅] \ Usubeni], "#fff"),
		("#F47983", [#kanji[桃色] \ Momoiro], "#fff"),
		("#e77546", [#kanji[黄丹] \ Ōdan], "#fff"),
		("#f7c114", [#kanji[藤黄] \ Tō’ō], "333"),
		("#fef263", [#kanji[黄蘗] \ Kihada], "#333"),
		("#D9A62E", [#kanji[櫨染] \ Hajizome], "333"),
		("#e9cd4c", [#kanji[刈安] \ Kariyasu], "#333"),
		("#B0927A", [#kanji(size: 1.45em)[利休白茶] \ Rikyūshiracha], "#fff"),
		("#407A52", [#kanji[緑青] \ Rokushō], "#fff"),
		("#3A6960", [#kanji[青碧] \ Seiheki], "#fff"),
		("#89729E", [#kanji[藤色] \  	Fuji-iro], "#fff"),
		("#A4345D", [#kanji[牡丹] \  	Bōtan], "#fff"),
		("#fcfaf2", [#kanji[白練] \  	Shironeri], "#333"),
	)
)

#let swatch(color, name: none, text-color: "#333") = {
	box(
		fill: rgb(color),
		stroke: rgb("#eee") + 0.05em,
		width: 5.5em,
		height: 7.5em,
		radius: 0.25em,
		[
		#box(
			fill: rgb("fefefe"),
			stroke: rgb("#eee") + 0.05em,
			radius: (top: 0.25em),
			width: 5.5em,
			height: 1.5em,
			inset: (x: 0.15em),
			align(horizon + center, color)
		)
		#if name != none {
			place(horizon + center,
				move(dy: 0.75em,
					text(
						size: 0.85em,
						fill: rgb(text-color),
						weight: 700
					)[#name]
				)
			)
		}
		]
	)
}

#for (category, colors) in swatches {
  let actual-colors = colors.filter(c => {
    not (type(c) == dictionary and c.keys() == ("title",))
  })
  
  let header = colors.find(c => {
    type(c) == dictionary and c.keys() == ("title",)
  })
  
  if header != none {
    v(1.5em)
    par(text(size: 1.75em, fill: rgb("#333"), header.title))
    v(-0.5em)
  }
  
  for group in actual-colors.chunks(7) {
    for color in group {
      if type(color) == array {
        [#swatch(
          upper(color.at(0)),
          name: color.at(1),
          text-color: color.at(2))]
      } else {
        [#swatch(upper(color))]
      }
    }
    v(-1.2em)
  }
}
#v(1.2em)