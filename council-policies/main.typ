#import "../template.typ": *; #import "../formatting.typ": *;
#show: project.with(
  title: "MathSoc",
  authors: "The Mathematics Society",
  header-footer-enable: 1,
  header: [Policies],
)

#import "../cover-page.typ": cover-page; #cover-page(title: "Policies");

#import "../table-of-contents.typ": table-of-contents; #table-of-contents(
  target-label: <policy>,
)

// Major Headers additionally come with a heading prefix
#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Article #numbering("1.1", ..nums). #h(1em) ],
)



#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Appendix #numbering("A.A", ..nums). #h(1em)],
)
