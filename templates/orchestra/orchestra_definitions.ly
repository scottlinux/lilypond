\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Dynamics
fmp = #(make-dynamic-script "fmp")
sfzmf = #(make-dynamic-script "sfzmf")
spacer = #(make-dynamic-script (markup ""))
InstrumentCenteredDynamics = {
  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing =
  #'((basic-distance . 1)
     (minimum-distance . 1)
     (padding . 0.5)
     (stretchability . 0))
  \override DynamicText #'self-alignment-X = #-1
  \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'stretchability = #0
  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'stretchability = #0
}
PianoCenteredDynamics = {
  \override DynamicText #'self-alignment-X = #-0.5
  \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'stretchability = #0
  \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'stretchability = #0
}
roundMF = \markup { \left-align \concat { \bold { \italic ( } \dynamic mf \bold { \italic ) } } }
boxMF = \markup { \bracket { \dynamic mf } }
crescendo = \markup { \italic "cresc." }
parenF = #(make-dynamic-script (markup #:line (#:normal-text #:italic
                                                #:fontsize 2 "(" #:hspace -0.8 #:dynamic "f" #:normal-text
                                                #:italic #:fontsize 2 ")")))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Staff
BracketinSingleStaff = {
  \override StaffGroup.SystemStartBracket #'collapse-height = #1
  \override Score.SystemStartBar #'collapse-height = #1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% percussion

#(define mydrums '(
                    (mutetriangle		cross		#f	6)
                    (opentriangle		triangle	#f	6)
                    (crashcymbal		xcircle		#f	6)
                    (crashcymbala		cross		#f	6)
                    (ridecymbal		cross		#f	4)
                    (ridecymbala		xcircle		#f	4)
                    (splashcymbal		diamond		#f	5)
                    (closedhihat		cross		#f	3)
                    (openhihat		harmonic	#f	3)
                    (pedalhihat		cross		#f	-5)
                    (claves		default		#f	3)
                    (hibongo		default		#f	2)
                    (lobongo		default		#f	0)
                    (hiwoodblock		harmonic-mixed	#f	2)
                    (lowoodblock		harmonic-mixed	#f	1)
                    (shortguiro		default		#f	0)
                    (longguiro		default		#f	0)
                    (snare			default		#f	1)
                    (lowfloortom		default		#f	-2)
                    (lowmidtom		default		#f	0)
                    (himidtom		default		#f	2)
                    (bassdrum		default		#f	-3)))


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Tempo stuff
accel = \markup { \bold \italic "accel." }
accelerando = \markup { \bold \italic "accelerando" }
accelpoco = \markup { \bold \italic "accel. poco a poco" }
pocoaccel = \markup { \bold \italic "poco accel." }
stretto = \markup { \bold \italic "stretto" }
rit = \markup { \bold \italic "rit." }
ritardando = \markup { \bold \italic "ritardando" }
rubato = \markup { \bold \italic "rubato" }
moltorubato = \markup { \bold \italic "molto rubato" }
semprerubato = \markup { \bold \italic "sempre rubato" }
senzarubato = \markup { \bold \italic "senza rubato" }
pocorit = \markup { \bold \italic "poco rit." }
moltorit = \markup { \bold \italic "molto rit." }
riten = \markup { \bold \italic "riten." }
ritenuto = \markup { \bold \italic "ritenuto" }
allarg = \markup { \bold \italic "allarg." }
piumosso = \markup { \bold \italic \concat { pi \char ##x00F9 mosso } }
menomosso = \markup { \bold \italic "meno mosso" }
piulento = \markup { \bold \italic \concat { pi \char ##x00F9 lento } }
rapido = \markup { \bold \italic "rapido" }
atempo = \markup { \left-align \bold \italic "a tempo" }
pocoatempo = \markup { \bold \italic "a tempo poco a poco" }
tempoi = \markup { \bold \italic "Tempo I" }
tempoii = \markup { \bold \italic "Tempo II" }
RitardandoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \bold \italic "rit. " }
  \override TextSpanner #'to-barline = ##t
  \override TextSpanner #'bound-details #'right #'padding = #1
}
AccelerandoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \bold \italic "accel. " }
  \override TextSpanner #'to-barline = ##t
  \override TextSpanner #'bound-details #'right #'padding = #1
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Add accidentals to trill spanner
sharpTrill = \once \override TrillSpanner #'edge-text =
#(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.65 #:sharp)) "")
flatTrill = \once \override TrillSpanner #'edge-text =
#(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.5 #:flat)) "")
naturalTrill = \once \override TrillSpanner #'edge-text =
#(cons (markup #:line (#:halign -0.5 #:musicglyph "scripts.trill" #:teeny #:raise 0.65 #:natural)) "")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Special midi effects
mute = \set Staff.midiInstrument = "muted trumpet"
hnopen = \set Staff.midiInstrument = "french horn"
tpopen = \set Staff.midiInstrument = "trumpet"
tbopen = \set Staff.midiInstrument = "trombone"
tuopen = \set Staff.midiInstrument = "tuba"
pizz = \set Staff.midiInstrument = "pizzicato strings"
arco = \set Staff.midiInstrument = "string ensemble 1"
vnarco = \set Staff.midiInstrument = "violin"
vlarco = \set Staff.midiInstrument = "viola"
vcarco = \set Staff.midiInstrument = "cello"
cbarco = \set Staff.midiInstrument = "contrabass"
legno = \set Staff.midiInstrument = "taiko drum"
bpizz = \set Staff.midiInstrument = "agogo"
vnsolo = \set Staff.midiInstrument = "violin"
vlsolo = \set Staff.midiInstrument = "viola"
vcsolo = \set Staff.midiInstrument = "cello"
cbsolo = \set Staff.midiInstrument = "contrabass"
tutti = \set Staff.midiInstrument = "string ensemble 1"
sord = \set Staff.midiInstrument = "string ensemble 2"
nosord = \set Staff.midiInstrument = "string ensemble 1"

