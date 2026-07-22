#let project(title: "", authors: "", header-footer-enable: 1, header: (), body) = {
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
    }
  )

  set text(
    font: "IBM Plex Sans",
    size: 10pt,
  )

  body
} 

