\version "2.18.2"

#(set-global-staff-size 18)

\header {
  title = "Three Songs"
  subtitle = \markup { \italic "for voice and piano" }
  dedication = ""
  composer = "COMPOSER"
  arranger = "(2015)"
  %piece = \markup \box {"Duration: 2:30"}
  copyright = "Copyright © 2015 COMPOSER"
  tagline = ""
}


\include "songs_metrics.ly"
\include "songs_notes.ly"

PianoHeading = {
  #(set-accidental-style 'neo-modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup \concat {"Piano" " "}
}



\bookpart {
  \header {
    title = "I. title"
    subtitle = "(author)"
  }
  \score {
    <<
      \override Score.BarNumber #'break-visibility = ##(#t #t #t)
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible
      \override Score.Stem #'stemlet-length = #0.75
      \override Score.StaffSymbol.layer = #4
      \override Score.TimeSignature.layer = #3
      \new PianoStaff
      {
        \set PianoStaff.instrumentName = "Piano "
        \set PianoStaff.shortInstrumentName = " "
        \set PianoStaff.midiInstrument = #"acoustic grand"
        <<
          \new Staff
          {
            << \MetricsI \PianoaNotesI >>
          }
          \new Staff
          {
            << \MetricsI \PianobNotesI >>
          }
        >>
      }
    >>
    \layout {
      \context { \Staff \override TimeSignature.style = #'numbered }
    }
     \midi { }
  }
}


\bookpart {
  \header {
    title = "II. title"
    subtitle = "(author)"
  }
  \score {
    <<
      \override Score.BarNumber #'break-visibility = ##(#t #t #t)
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible
      \override Score.Stem #'stemlet-length = #0.75
      \override Score.StaffSymbol.layer = #4
      \override Score.TimeSignature.layer = #3
      \new PianoStaff
      {
        \set PianoStaff.instrumentName = "Piano "
        \set PianoStaff.shortInstrumentName = " "
        \set PianoStaff.midiInstrument = #"acoustic grand"
        <<
          \new Staff
          {
            << \MetricsII \PianoaNotesII >>
          }
          \new Staff
          {
            << \MetricsII \PianobNotesII >>
          }
        >>
      }
    >>
    \layout {
      \context { \Staff \override TimeSignature.style = #'numbered }
    }
     \midi { }
  }
}

\bookpart {
  \header {
    title = "III. title"
    subtitle = "(author)"
  }
  \score {
    <<
      \override Score.BarNumber #'break-visibility = ##(#t #t #t)
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible
      \override Score.Stem #'stemlet-length = #0.75
      \override Score.StaffSymbol.layer = #4
      \override Score.TimeSignature.layer = #3
      \new PianoStaff
      {
        \set PianoStaff.instrumentName = "Piano "
        \set PianoStaff.shortInstrumentName = " "
        \set PianoStaff.midiInstrument = #"acoustic grand"
        <<
          \new Staff
          {
            << \MetricsIII \PianoaNotesIII >>
          }
          \new Staff
          {
            << \MetricsIII \PianobNotesIII >>
          }
        >>
      }
    >>
    \layout {
      \context { \Staff \override TimeSignature.style = #'numbered }
    }
     \midi { }
  }
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
  max-systems-per-page = 8
  #(set-paper-size "letter")
}
