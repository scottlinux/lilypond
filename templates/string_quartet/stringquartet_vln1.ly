\version "2.18.2"

#(set-global-staff-size 17)
#(set-default-paper-size "letter")

\header {
  title = "title"
  subtitle = \markup { \italic "for string quartet" }
  %dedication = ""
  composer = "COMPOSER"
  arranger = "(2015)"
  copyright = "Copyright © 2015 COMPOSER"
  tagline = ""
}

\include "stringquartet_metrics.ly"
\include "stringquartet_notes.ly"

ViolinOneHeading = {
  #(set-accidental-style 'neo-modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup \concat {"Violin I" " "}
}


\score {
  <<
    \override Score.Stem #'stemlet-length = #0.75
    \override Score.StaffSymbol.layer = #4
    \override Score.TimeSignature.layer = #3
    \new Staff = "Violin I" <<
      \Metrics
      \ViolinOneHeading
      \ViolinOneNotes
    >>
  >>
  \layout {
    \context { \Staff \override TimeSignature.style = #'numbered }
  }
}

\paper {
  indent = 2.5\cm
  max-systems-per-page = 8
  #(set-paper-size "letter")
}
