\version "2.18.2"

SopranoNotesI = {
  \clef treble
  \relative c''{
    \oneVoice \dynamicUp
    c1 | %1
  }
}

SopranoNotesII = {
  \clef treble
  \relative c''{
    \oneVoice \dynamicUp
  }
}

SopranoNotesIII = {
  \clef treble
  \relative c''{
    \oneVoice \dynamicUp
  }
}


PianoaNotesI = {
  \clef treble
  \relative c'{
  c1 | %1  

  }
}

PianobNotesI = {
  \clef bass
  <<
    \new Voice {
      \relative c'{
        \voiceOne
          c1 | %1
      }
    }
    \new Voice {
      \voiceTwo
      \relative c'{
        \voiceTwo
          a1 | %1

      }
    }

  >>
}


PianoaNotesII = {
  \clef treble
  \relative c'{

  }
}

PianobNotesII = {
  \clef bass
  <<
    \new Voice {
      \relative c'{
        \voiceOne
      }
    }
    \new Voice {
      \voiceTwo
      \relative c'{
        \voiceTwo

      }
    }

  >>
}

PianoaNotesIII = {
  \clef treble
  \relative c'{

  }
}

PianobNotesIII = {
  \clef bass
  <<
    \new Voice {
      \relative c'{
        \voiceOne
      }
    }
    \new Voice {
      \voiceTwo
      \relative c'{
        \voiceTwo

      }
    }

  >>
}


sopranotextI =  \lyricmode {

}

sopranotextII =  \lyricmode {

}

sopranotextIII =  \lyricmode {

}
