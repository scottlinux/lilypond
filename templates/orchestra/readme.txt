orchestra_notes.ly - all notes go here

orchestra_metrics.ly - tempo indications, meter changes, and other similar global stuff

orchestra_definitions.ly - work in progress various variables

orchestra_score.ly - the main score file to engrave a full score

<instrument>.ly - individual parts



Engrave main score: 

$ lilypond orchestra_score.ly

Engrave individual parts like so:

$ lilypond hornone.ly

