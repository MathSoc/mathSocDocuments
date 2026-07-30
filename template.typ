#import "formatting.typ": mathSocPink

#let project(
  title: "",
  authors: "",
  header-footer-enable: 1,
  header: (),
  body,
) = {
  set document(
    author: authors,
    title: title,
    date: auto,
  )

  set page(
    paper: "us-letter",
    margin: 1in,

    // Header enabled only after header-footer-enable pages
    header: context {
      if counter(page).get().at(0) > header-footer-enable [
        #grid(
          columns: (1fr, 1fr),
          row-gutter: 0%,
          inset: 0pt,
          [#header], align(right)[#authors],
        )
        #v(-0.5em)
        #line(length: 100%, stroke: 1pt + black)
      ]
    },

    // Footer enabled only after header-footer-enable pages
    footer: context {
      if counter(page).get().at(0) > header-footer-enable [
        #h(1fr)
        #counter(page).display(
          "1",
          both: false,
        )
        #h(1fr)
      ]
    },
  )

  // Headings are numbered and the title is spaced
  show heading: set block(below: 1em, above: 2em)
  set heading(
    numbering: (..nums) => [#numbering("1.1", ..nums). #h(1em) ],
  )

  // Text settings
  set text(
    font: "IBM Plex Sans",
    size: 10pt,
  )

  // List and Numbered List settings
  set list(
    spacing: 1em,
    indent: 1em
  )

  set enum(
    spacing: 1em,
    indent: 1em
  )

  // Definitions List settings
  set terms(
    separator: [#linebreak()],
    hanging-indent: 3em,
    spacing: 1.5em
  )

  body
}
