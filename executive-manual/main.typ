#import "../template.typ": project;
#show: project.with(
  title: "MathSoc", 
  authors: "The Mathematics Society", 
  header-footer-enable: 1,
  header: [Executive Manual],
)

#import "../cover-page.typ": cover-page;
#cover-page(title: "Executive Manual");
