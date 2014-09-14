\version "2.18.2"

#(set-global-staff-size 14)
#(set-default-paper-size "letter")

\header {
  title = "title"
  subtitle = \markup { \italic "for orchestra" }
  dedication = ""
  composer = "COMPOSER"
  arranger = "(2015)"
  piece = \markup \box {"Transposed Score"}
  copyright = "Copyright © 2015 COMPOSER"
  tagline = ""
}

\include "orchestra_metrics.ly"
\include "orchestra_notes.ly"
\include "orchestra_headings.ly"
\include "orchestra_definitions.ly"


\score {
  <<
    \override Score.BarNumber #'break-visibility = ##(#t #t #t)
    \override Score.BarNumber #'break-visibility = #end-of-line-invisible
    \override Score.Stem #'stemlet-length = #0.75
    \override Score.StaffSymbol.layer = #4
    \override Score.TimeSignature.layer = #3
    \new StaffGroup <<
      \new Staff = "flute" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"flute"
      }
      <<
        { \voiceOne << \Metrics \FlutesHeading \FluteOneNotes >> }
        { \voiceTwo << \Metrics \FlutesHeading \FluteTwoNotes >> }
      >>
      \new Staff = "oboe" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"oboe"
      }
      <<
        { \voiceOne << \Metrics \OboesHeading \OboeOneNotes >> }
        { \voiceTwo << \Metrics \OboesHeading \OboeTwoNotes >> }
      >>
      \new Staff = "clarinet" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"clarinet"
      }
      <<
        {
          \voiceOne <<
            \Metrics \ClarinetsHeading
            \transpose c d %comment out for C score
            \ClarinetOneNotes
          >>
        }
        {
          \voiceTwo <<
            \Metrics \ClarinetsHeading
            \transpose c d %comment out for C score
            \ClarinetTwoNotes
          >>
        }
      >>
      \new Staff = "bassoon" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"bassoon"
      }
      <<
        { \voiceOne << \Metrics \BassoonsHeading \BassoonOneNotes >> }
        { \voiceTwo << \Metrics \BassoonsHeading \BassoonTwoNotes >> }
      >>
    >>
    \new StaffGroup <<
      \new Staff = "horn" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"trumpet"
      }
      <<
        {
          \voiceOne <<
            \Metrics \HornsHeading
            \transpose f c' %comment out for C score
            \HornOneNotes
          >>
        }
        {
          \voiceTwo <<
            \Metrics \HornsHeading
            \transpose f c' %comment out for C score
            \HornTwoNotes
          >>
        }
      >>
      \new Staff = "trumpet" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"trumpet"
      }
      <<
        {
          \voiceOne <<
            \Metrics \TrumpetsHeading
            \transpose c d %comment out for C score
            \TrumpetOneNotes
          >>
        }
        {
          \voiceTwo <<
            \Metrics \TrumpetsHeading
            \transpose c d %comment out for C score
            \TrumpetTwoNotes
          >>
        }
      >>
      \new Staff = "trombone" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"trombone"
      }
      <<
        { \voiceOne << \Metrics \TrombonesHeading \TromboneOneNotes >> }
        { \voiceTwo << \Metrics \TrombonesHeading  \TromboneTwoNotes >> }
      >>
      \new Staff = "bass trombone" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"trombone"
      }
      << \Metrics \BassTromboneHeading \TromboneThreeNotes >>
      \new Staff = "tuba" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"tuba"
      }
      << \Metrics \TubaHeading \TubaNotes >>
    >>
    \new StaffGroup <<
      \new Staff = "timpani" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"timpani"
      }
      << \Metrics \TimpaniHeading \TimpaniNotes >>
      \new DrumStaff = "percussion" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        \override TimeSignature.style = #'numbered
      }
      << \Metrics \PercussionHeading \PercussionNotes >>
      \new Staff = "glockenspiel" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"glockenspiel"
      }
      << \Metrics \GlockenspielHeading \GlockenspielNotes >>
    >>
    \new PianoStaff <<
      \PianoHeading
      \new Staff = "PianoRH" \with { \override VerticalAxisGroup #'remove-empty = ##f midiInstrument = #"acoustic grand" } << \Metrics \PianoRHNotes  >>
      %\new Dynamics = "piano dynamics" { \PianoCenteredDynamics \PianoDynamics }
      \new Staff = "PianoLH" \with { \override VerticalAxisGroup #'remove-empty = ##f midiInstrument = #"acoustic grand" } <<  \Metrics \PianoLHNotes >>
    >>
    \new StaffGroup \with {
      \override StaffGrouper #'staff-staff-spacing #'stretchability = #3.5
      \override StaffGrouper #'staffgroup-staff-spacing = #'((basic-distance . 9)
                                                             (minimum-distance . 7)
                                                             (padding . 1)
                                                             (stretchability . 3.5))
    } <<
      \new GrandStaff = "violins" <<
        \new Staff = "violin I" \with {
          \override VerticalAxisGroup #'remove-empty = ##f
          midiInstrument = #"violin"
        }
        << \Metrics \ViolinOneHeading  \ViolinOneNotes >>
        \new Staff = "violin II" \with {
          \override VerticalAxisGroup #'remove-empty = ##f
          midiInstrument = #"violin"
        }
        << \Metrics \ViolinTwoHeading \ViolinTwoNotes >>
      >>
      \new Staff = "viola" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"viola"
      }
      << \Metrics \ViolaHeading \ViolaNotes >>
      \new Staff = "cello" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"cello"
      }
      << \Metrics \VioloncelloHeading \CelloNotes >>
      \new Staff = "double bass" \with {
        \override VerticalAxisGroup #'remove-empty = ##f
        midiInstrument = #"contrabass"
      }
      << \Metrics \DoubleBassHeading \DoubleBassNotes >>
    >>
  >>
  \layout {
    \context { \RemoveEmptyStaffContext }
    \context { \Staff \override TimeSignature.style = #'numbered \accidentalStyle "neo-modern"  }
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
  left-margin = 1.4\cm
  %system-separator-markup = \slashSeparator
  %max-systems-per-page = 1
  #(set-paper-size "letter")
}
