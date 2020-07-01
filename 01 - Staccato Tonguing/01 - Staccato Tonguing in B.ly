\version "2.20.0"
\language "english"

DCfine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.C. al Fine" }
}

Fine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small \italic "Fine" }
}

\book {
  \paper {
    indent = 0\mm
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \fromproperty #'header:piece
        \fromproperty #'header:composer
      }
    }
    fonts = #
  (make-pango-font-tree
   "Lato"
   "Lato"
   "Liberation Mono"
   (/ (* staff-height pt) 2.5))
  }
  \header { tagline = ##f 
            copyright = "This work is licensed under a CC BY-SA 4.0 license."
            dedication = "openArbanProject"
            title = "Staccato Tonguing Study"
            subtitle = "from PRACTICAL STUDIES for the CORNET (and TRUMPET)"
  }
  
  \score {
    \header { composer = "E.F. Goldman" }
    \layout { \context { \Score \remove "Bar_number_engraver" }}
    \relative c'
    { 
      
      \numericTimeSignature \time 4/4
      \key b \major
      b'16-.\mf b-. b-. b-. as-. as-. as-. as-. b-. b-. b-. b-. fs-. fs-. fs-. fs-. 
      gs-. as-. b-. cs-. b-. as-. gs-. as-. b-. fs-. ds'-. fs,-. cs'-. fs,-. as-. fs-.
      b-. b-. b-. b-. as-. as-. as-. as-. b-. b-. b-. b-. fs-. fs-. fs-. fs-. 
      gs-. as-. b-. cs-. b-. as-. gs-. as-. b-. fs-. ds'-. fs,-. b8-. r
      cs16-"sempre staccato" cs cs cs fs, fs fs fs ds' ds ds ds fs, fs fs fs e' ds cs e ds cs b ds cs fs, fs fs fs fs fs fs
      cs' cs cs cs fs, fs fs fs ds' ds ds ds fs, fs fs fs e' ds cs e ds cs b ds cs4 r16 fs, gs as
      b16 b b b as as as as b b b b fs fs fs fs gs as b cs b as gs as b fs ds' fs, cs' fs, as fs
      b b b b as as as as b b b b fs fs fs fs gs as b cs b as gs as b fs ds' fs, b8 r \Fine
      \bar "||" \break
      \key e \major
      e16\f b gs e gs b e b e b gs e gs b e b a b cs a fs gs a fs ds e fs ds b b' cs ds
      e b gs e gs b e b e b gs e gs b e b a b cs a fs gs a fs ds e fs ds b b' b b
      a-> b b b gs-> b b b fs-> b b b e,-> cs' cs cs 
      b-> cs cs cs a-> cs cs cs gs-> cs cs cs fs,-> ds' ds ds
      cs-> ds ds ds b-> ds ds ds a-> ds ds ds gs,-> e' e e 
      ds-> e e e cs-> e e e b-> e e e a,-> fs' fs fs 
      e-> fs fs fs ds-> fs fs fs cs-> fs fs fs b,-> gs' gs gs 
      gs-> e e e e cs cs cs cs as as as as fs' fs fs fs ds ds ds ds b b b b gs gs gs gs 
      e' e e e cs cs cs cs bf bf bf bf g g g g ds' ds ds 
      ds4 r16 ds-"rall..." ds ds ds4 r16 ds ds \DCfine cs 
      \bar "||"
    }
  }
  
}
