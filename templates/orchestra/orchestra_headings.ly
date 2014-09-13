\version "2.18.2"

\include "orchestra_definitions.ly"

FlutesHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Flute " }
  \set Staff.shortInstrumentName = #"Fl. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

OboesHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Oboe " }
  \set Staff.shortInstrumentName = #"Ob. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}


ClarinetsHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup \concat { "Clarinet in B"\smaller \flat " " }
  \set Staff.shortInstrumentName = #"Cl. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}


BassoonsHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Bassoon " }
  \set Staff.shortInstrumentName = #"Bsn. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

HornsHeading = {
  #(set-accidental-style 'modern)
  \set Staff.instrumentName = \markup { "Horn in F " }
  \set Staff.shortInstrumentName = #"Hn. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TrumpetsHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup \concat { "Trumpet in B"\smaller \flat " " }
  \set Staff.shortInstrumentName = #"Tpt. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}


TrombonesHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Trombone " }
  \set Staff.shortInstrumentName = #"Tb. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

BassTromboneHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = "Bass Trombone"
  \set Staff.shortInstrumentName = #"BTb. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TubaHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Tuba " }
  \set Staff.shortInstrumentName = #"Tba. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

TimpaniHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Timpani " }
  \set Staff.shortInstrumentName = #"Timp. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

PercussionHeading = {
  \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
  \set DrumStaff.instrumentName = "Percussion "
  \set DrumStaff.shortInstrumentName = #"Perc. "
  \override DrumStaff.InstrumentName #'self-alignment-X = #RIGHT
}

GlockenspielHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Glockenspiel " }
  \set Staff.shortInstrumentName = #"Glock. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}


PianoHeading = {
  #(set-accidental-style 'piano)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set PianoStaff.instrumentName = #"Piano "
  \set PianoStaff.shortInstrumentName = #"Pno. "
  \set PianoStaff.pedalSustainStyle = #'mixed
  \override PianoStaff.InstrumentName #'self-alignment-X = #RIGHT
}

ViolinOneHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Violin I " }
  \set Staff.shortInstrumentName = #"Vln. I "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

ViolinTwoHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Violin II " }
  \set Staff.shortInstrumentName = #"Vln. II "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

ViolaHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Viola " }
  \set Staff.shortInstrumentName = #"Vla. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

VioloncelloHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Violoncello " }
  \set Staff.shortInstrumentName = #"Vc. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}

DoubleBassHeading = {
  #(set-accidental-style 'modern)
  \override Staff.Accidental #'hide-tied-accidental-after-break = ##t
  \set Staff.instrumentName = \markup { "Double Bass " }
  \set Staff.shortInstrumentName = #"Db. "
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
}
