\name{disappearingPar}
\alias{disappearingPar}
\title{Example}
\description{example}
\details{
   Recent changes in R-devel seem to cause rendering the text returned by
   Rd macro as a single paragraph (in html), even if there are embedded
   empty lines in the text. Render this file to html with a recent
   R-devel and R-3.5.1patched to see the difference. The system
   information is printed in section Note.
}
\references{
  This is the result of a straigh Sexpr:
  
\Sexpr[stage=build,results=rd]{paste0(letters[1:4], collapse = "\n\n")}

In html, each letter above is inside a \verb{<p>} tag (both
R-3.5-1patched and R-devel, see section Note for the system information
for the rendered html file).

Define a macro containing the same Sexpr:
\preformatted{
\newcommand{\abc}{\Sexpr[stage=build,results=rd]{paste0(letters[1:4], collapse = "\n\n")}}
}
\newcommand{\abc}{\Sexpr[stage=build,results=rd]{paste0(letters[1:4], collapse = "\n\n")}}

This is the result:

\abc{}
\cr\cr
In html, the empty lines are there in the html source, but in R-devel there is a single \verb{<p>}
tag enclosing the whole Sexpr. In R-3.5-1patched each letter is enclosed
with p-tags.
}  
\note{
  System information:
  
\Sexpr[stage=build,results=rd]{paste0("\\\\preformatted{\n", paste0(capture.output(print(sessionInfo())), collapse="\n"), "\n}")}
}
