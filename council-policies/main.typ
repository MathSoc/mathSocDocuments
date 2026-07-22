#import "../template.typ": *;
#show: project.with(
  title: "MathSoc", 
  authors: "The Mathematics Society", 
  header-footer-enable: 1,
  header: [Council Policies],
)

#import "../cover-page.typ": cover-page;
#cover-page(title: "Council Policies");

// Major Headers additionally come with a heading prefix
#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Policy #numbering("1.1", ..nums). #h(1em)],
)

// TODO
#set text(fill: mathSocPink)
= Finance
= Clubs Policy
= Elections and Referenda Policy
= Honorary Lifetime Membership Committee
= Mathematics Instructor of the Year Committee

#set text(fill: black)
#include "c6_eng-play.typ"

#set text(fill: mathSocPink)
= Faculty Representative Appointments

#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Appendix #numbering("A.A", ..nums). #h(1em)],
)
#counter(heading).update(0)
