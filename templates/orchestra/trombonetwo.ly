\version "2.18.2"

#(set-global-staff-size 18)
#(set-default-paper-size "letter")

\header {
  title = "title"
  subtitle = \markup { \italic "for orchestra" }
  dedication = ""
  composer = "COMPOSER"
  arranger = "(2015)"
  %piece = \markup \box {"Transposed Score"}
  copyright = "Copyright © 2015 COMPOSER"
  tagline = ""
}

\include "orchestra_metrics.ly"
\include "orchestra_notes.ly"
\include "orchestra_headings.ly"
\include "orchestra_definitions.ly"

TromboneTwoHeading = {
  #(set-accidental-style 'neo-modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup \concat {"Trombone II" " "}
}

\score {
  <<
    %\override Score.BarNumber #'break-visibility = ##(#t #t #t)
    %\override Score.BarNumber #'break-visibility = #end-of-line-invisible
    \override Score.Stem #'stemlet-length = #0.75
    \override Score.StaffSymbol.layer = #4
    \override Score.TimeSignature.layer = #3
    \new Staff = "trombone" \with {
      \override VerticalAxisGroup #'remove-empty = ##f
    }
    << \Metrics \TromboneTwoHeading \TromboneTwoNotes >>
  >>
  \layout {
    \context { \RemoveEmptyStaffContext }
    \context { \Staff \override TimeSignature.style = #'numbered \accidentalStyle "neo-modern"  }
  }
  %\midi { }
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
  left-margin = 1.4\cm
  %system-separator-markup = \slashSeparator
  %max-systems-per-page = 1
}
