#let cover-page(title: "") = {
  box(
    height: 60%,
    align(center + horizon, [ 
      #image("assets/MathSoc_RGB-VerticalStandard.svg", width: 100%)
    ])
  )

  align(center + bottom, [
    #text(size: 36pt)[*#title*] 
    #v(-1em)
    #text(size: 16pt)[*#datetime.today().display("[month repr:long] [day], [year]")*]
    #v(1em)
    #text(size: 16pt)[
      The Mathematics Society
      #v(-0.5em)
      of the 
      #v(-0.5em)
      University of Waterloo
    ]
  ])

  pagebreak()
}
