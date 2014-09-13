\version "2.18.2"

#(set-global-staff-size 14)
#(set-default-paper-size "letter")


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


\bookpart {
  \header {
    title = "I. Title"
    subtitle = "(author)"
  }
  \score {
    <<
      \override Score.BarNumber #'break-visibility = ##(#t #t #t)
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible
      \override Score.Stem #'stemlet-length = #0.75
      \override Score.StaffSymbol.layer = #4
      \override Score.TimeSignature.layer = #3
      \new StaffGroup <<
        \new Staff = "Soprano"
        \with {
          \consists "Ambitus_engraver"
        }
        \new Voice = "soprano"
        {
          \set Staff.instrumentName = \markup \concat {"Soprano" " "}
          << \MetricsI \SopranoNotesI >>
        }
        \new Lyrics \lyricsto "soprano" \sopranotextI

        \new PianoStaff
        {
          \set PianoStaff.instrumentName = "Piano "
          \set PianoStaff.shortInstrumentName = " "
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
    >>
    \layout {
      \context { \Staff \override TimeSignature.style = #'numbered }
    }
    \midi { }
  }
}


\bookpart {
  \header {
    title = "II. Title"
    subtitle = "(author)"
  }
  \score {
    <<
      \override Score.BarNumber #'break-visibility = ##(#t #t #t)
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible
      \override Score.Stem #'stemlet-length = #0.75
      \override Score.StaffSymbol.layer = #4
      \override Score.TimeSignature.layer = #3
      \new StaffGroup <<
        \new Staff = "Soprano"
        \with {
          \consists "Ambitus_engraver"
        }
        \new Voice = "soprano"
        {
          \set Staff.instrumentName = \markup \concat {"Soprano" " "}
          << \MetricsII \SopranoNotesII >>
        }
        \new Lyrics \lyricsto "soprano" \sopranotextII

        \new PianoStaff
        {
          \set PianoStaff.instrumentName = "Piano "
          \set PianoStaff.shortInstrumentName = " "
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
      \new StaffGroup <<
        \new Staff = "Soprano"
        \with {
          \consists "Ambitus_engraver"
        }
        \new Voice = "soprano"
        {
          \set Staff.instrumentName = \markup \concat {"Soprano" " "}
          << \MetricsIII \SopranoNotesIII >>
        }
        \new Lyrics \lyricsto "soprano" \sopranotextIII
        \new PianoStaff
        {
          \set PianoStaff.instrumentName = "Piano "
          \set PianoStaff.shortInstrumentName = " "
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
  %max-systems-per-page = 1
}


