#let table-of-contents(target-label: heading) = {
  // Bold Top-Level Section Headers and show no dots.
  show outline.entry.where(level: 1): it => link(
    it.element.location(),
    it.indented(
      strong[#it.prefix()],
      strong[
        #it.body()
        #box(width: 1fr, [])
        #box(width: 1.5in)[#align(right)[#it.page()]]
      ],
    ),
  )

  // Moreover increase margin between top-level headers
  show outline.entry.where(level: 1): set block(above: 1em, below: 1em)

  // Other headers are not bold, and get dotted lines
  show outline
    .entry
    .where(level: 2)
    .or(outline.entry.where(level: 3)): it => link(
    it.element.location(),
    it.indented(
      it.prefix(),
      [
        #it.body()
        #box(width: 1fr, repeat([.], gap: 0.15em))
        #box(width: 1.5in)[#align(right)[#it.page()]]
      ],
    ),
  )

  outline(
    indent: 2em,
    target: target-label,
  )

  pagebreak()
}
