#import "../template.typ": *; #import "../formatting.typ": *;
#show: project.with(
  title: "MathSoc",
  authors: "The Mathematics Society",
  header-footer-enable: 1,
  header: [Bylaws],
)

#import "../cover-page.typ": cover-page; #cover-page(title: "Bylaws");

#import "../table-of-contents.typ": table-of-contents; #table-of-contents(
  target-label: <bylaw>,
)

// Major Headers additionally come with a heading prefix
#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Article #numbering("1.1", ..nums). #h(1em) ],
)

#include "name.typ"
#include "object.typ"
#include "definitions.typ"
#include "parliamentary-authority.typ"
#include "membership.typ"
#include "board.typ"
#include "council.typ"
#include "officers.typ"
#include "elections.typ"
#include "general-meetings.typ"
#include "referenda.typ"
#include "collapse-and-dissolution.typ"
#include "amendments.typ"

#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Appendix #numbering("A.A", ..nums). #h(1em)],
)
#include "method-of-equal-proportions.typ"
#include "original-annotations.typ"
