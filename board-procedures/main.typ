#import "../template.typ": *;
#show: project.with(
  title: "MathSoc", 
  authors: "The Mathematics Society", 
  header-footer-enable: 1,
  header: [Board Procedures],
)

#import "../cover-page.typ": cover-page;
#cover-page(title: "Board Procedures");

// Major Headers additionally come with a heading prefix
#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Procedure #numbering("1.1", ..nums). #h(1em)],
)

// TODO
#set text(fill: mathSocPink)
= Finance
= Capital Improvements Fund
= Executive Appointment Committee
= Executive Evaluation Committee
= Executive Incapacitation and Removal
= Executive Manual
= Key Distribution
= Student Placement and Club Expansion (SPACE) Committee
= Website Committee
= Non-Voting Resource Members
= Full and Part-time Permanent Staff
= Code of Conduct

#show heading.where(level: 1): set heading(
  numbering: (..nums) => [Appendix #numbering("A.A", ..nums). #h(1em)],
)
#counter(heading).update(0)
= Misconduct Reporting Document
= Executive Evaluation Criteria