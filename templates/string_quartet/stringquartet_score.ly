\version "2.18.2"

#(set-global-staff-size 14)
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

\score {
  <<
    \override Score.BarNumber #'break-visibility = ##(#t #t #t)
    \override Score.BarNumber #'break-visibility = #end-of-line-invisible
    \override Score.Stem #'stemlet-length = #0.75
    \override Score.StaffSymbol.layer = #4
    \override Score.TimeSignature.layer = #3    
     \new StaffGroup <<
      \new Staff = "Violin I"
      {
        \set Staff.instrumentName = \markup \concat {"Violin I" " "}
        \set Staff.midiInstrument = #"violin"
        << \Metrics \ViolinOneNotes >>
      }
      \new Staff = "Violin II"
      {
        \set Staff.instrumentName = \markup \concat {"Violin II" " "}
        \set Staff.midiInstrument = #"violin"
        << \Metrics \ViolinTwoNotes  >>
      }
      \new Staff = "Viola"
      {
        \set Staff.instrumentName = \markup \concat {"Viola" " "}
        \set Staff.midiInstrument = #"viola"
        << \Metrics \ViolaNotes  >>
      }
      \new Staff = "Cello"
      {
        \set Staff.instrumentName = \markup \concat {"Cello" " "}
        \set Staff.midiInstrument = #"cello"
        << \Metrics \CelloNotes  >>
      }
    >>

  >>
  \layout {
    \context { \Staff \override TimeSignature.style = #'numbered }
  }
  \midi { }
}

\paper {
  %two-sided = ##t
  page-limit-inter-system-space = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  page-limit-inter-system-space-factor = 1.3
  top-margin = 1\cm
  inner-margin = 2\cm
  outer-margin = 1.6\cm
  %system-separator-markup = \slashSeparator
  %max-systems-per-page = 1
}


