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

#show heading.where(level: 1): set heading(
  numbering: none
)
#include "foreword.typ"
#pagebreak()

#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Policy #numbering("1.1", ..nums). #h(1em) ],
)
#include "elections.typ"
#pagebreak()
#include "clubs.typ"
#pagebreak()

#include "engplay.typ"
#pagebreak()

#include "faculty-reps.typ"
#pagebreak()

#show heading: set heading(
  numbering: (..nums) => [#numbering("A.1", ..nums). #h(1em)],
)
#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Appendix #numbering("A.1", ..nums). #h(1em)],
)

#counter(heading).update(0)
= Rescinded Policies <policy>
#include "cnd.typ"
#include "bookings.typ"
#include "external-funding.typ"
#include "keys.typ"