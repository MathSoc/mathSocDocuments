#import "../template.typ": *;
#show: project.with(
  title: "MathSoc", 
  authors: "The Mathematics Society", 
  header-footer-enable: 1,
  header: [Executive Manual],
)

#import "../cover-page.typ": cover-page;
#cover-page(title: "Executive Manual");

// Major Headers additionally come with a heading prefix
#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Directive #numbering("1.1", ..nums). #h(1em)],
)

// TODO
#set text(fill: mathSocPink)
= President
== Volunteer Mandatory Training

= Vice-President, Finance

= Vice-President, Spaces
== Lounge and Hallway Bookings
== MathSoc Bulletin Board Policy

= Vice-President, Events
== Math Graduation Committee

= Vice-President, Academic

= Vice-President, Communications
== Marketing Policy
== Electronic Communications

= Vice-President, Resources
== Equipment Bookings
== Locker Distribution

= Vice-President, Outreach
== Committee of First Year Affairs

#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Appendix #numbering("A.A", ..nums). #h(1em)],
)
#counter(heading).update(0)
// = Rubric or Checklist of duties by executive?
