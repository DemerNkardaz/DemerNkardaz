#set page(width: auto, height: auto, margin: 0pt,fill: none)

#let color(color, body) = {
  text(fill: rgb(color), body)
}

#let sym(body) = {
	text(size: 1.25em, style: "normal", font: "Quivira", body)
}

#let elem(bg-color, text-color, body) = {
	box(
		fill: rgb(bg-color),
		radius: 1em,
		height: 1.75em,
		inset: (
			x: 0.75em,
		),
		align(horizon + center,
		text(fill: rgb(text-color), weight: 600)[#body]
		)
	)
}

#let vline() = {
	box(
		inset: (x: 0.25em),  
		height: 1.5em,
		align(horizon + center,
			line(angle: 90deg, length: 1.5em)
		)
	)
}

#let hline() = {
	box(
		inset: (x: 0.25em), 
		height: 1.5em,
		align(horizon + center,
			line(angle: 0deg, length: 1.5em)
		)
	)
}

#show: color.with("#888")
#show: text.with(
	font: ("Philosopher","Noto Sans", "Quivira"),
	size: 14pt
)

#table(
	align: horizon,
	columns: 2,
	row-gutter: 0.25em,
	stroke: none,
	[], [],
	[= #color("#333")[Signa]],[#v(1.25em)],
	[*Element*],
	[
		#elem("#eae542", "#333")[#sym[🜍] Sulfur]
		#elem("#c56a4e", "#fff")[#sym[♀] Copper]
		#elem("#aaa", "#fff")[Nickel]
		#elem("#e53154", "#fff")[Lithium]
	],
	[*Planet*],
	[
		#elem("#a2d3d8", "#333")[#sym[♅] Uranus]
	],
	[*Litera*],
	[
		#elem("#ece8bc", "#333")[#sym[Θ θ] Þeta]
		#elem("#41ecbd", "#333")[#sym[Λ λ] Lambda]
		#elem("#f76950", "#333")[#sym[Α α] Alpha]
	],
	[*Arcana*],
	[
		#elem("#85a2a3", "#fff")[Chariot (7)]
		#elem("#f20058", "#fff")[Fool (0/ⅩⅫ)]
	],
	[], [],
	[= #color("#333")[Natalis]],[#v(1.25em)],
	[*#sym[☉] Sol*],
	[
		#elem("#914f4e", "#fff")[#sym[♏] Scorpius]
		#hline()
		#elem("#6b5b77", "#fff")[#sym[♐] Sagittarius]
	],
	[*#sym[☿] Mercurius*],
	[
		#elem("#914f4e", "#fff")[#sym[♏] Scorpius]
	],
)