#let color(color, body) = {
  text(fill: rgb(color), body)
}

#let sym(body) = {
	text(
	size: 1.25em,
	style: "normal",
	font: (
		"Quivira",
		"Noto Sans Symbols",
		"Noto Sans Symbols 2",
		),
	body
	)
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

#let colon(height: 1.5em, dot-size: 0.1em) = {
  box(
    inset: (x: 0.25em),
    height: height,
    align(horizon + center,
      layout(size => {
        let h = height
        place(
          dx: 0pt,
          dy: -(h / 2.56),
          stack(
            dir: ttb,
            spacing: 0.5em,
            circle(radius: dot-size, fill: rgb("333")),
            circle(radius: dot-size, fill: rgb("333")),
          )
        )
      })
    )
  )
}

#let set-page(body) = {
	set page(
		width: auto,
		height: auto,
		margin: 0pt,
		fill: none
	)

	show: color.with("#888")
	show: text.with(
		font: ("Philosopher","Noto Sans", "Quivira"),
		size: 14pt
	)
	
	body
}
