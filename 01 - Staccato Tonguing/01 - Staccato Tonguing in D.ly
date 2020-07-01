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
      \key d \major
      d'16-.\mf d-. d-. d-. cs-. cs-. cs-. cs-. d-. d-. d-. d-. a-. a-. a-. a-. 
      b-. cs-. d-. e-. d-. cs-. b-. cs-. d-. a-. fs'-. a,-. e'-. a,-. cs-. a-.
      d-. d-. d-. d-. cs-. cs-. cs-. cs-. d-. d-. d-. d-. a-. a-. a-. a-. 
      b-. cs-. d-. e-. d-. cs-. b-. cs-. d-. a-. fs'-. a,-. d8-. r
      e16-"sempre staccato" e e e a, a a a fs' fs fs fs a, a a a g' fs e g fs e d fs e a, a a a a a a
      e' e e e a, a a a fs' fs fs fs a, a a a g' fs e g fs e d fs e4 r16 a, b cs
      d16 d d d cs cs cs cs d d d d a a a a b cs d e d cs b cs d a fs' a, e' a, cs a
      d d d d cs cs cs cs d d d d a a a a b cs d e d cs b cs d a fs' a, d8 r \Fine
      \bar "||" \break
      \key g \major
      g16\f d b g b d g d g d b g b d g d c d e c a b c a fs g a fs d d' e fs
      g d b g b d g d g d b g b d g d c d e c a b c a fs g a fs d d' d d
      c-> d d d b-> d d d a-> d d d g,-> e' e e 
      d-> e e e c-> e e e b-> e e e a,-> fs' fs fs
      e-> fs fs fs d-> fs fs fs c-> fs fs fs b,-> g' g g 
      fs-> g g g e-> g g g d-> g g g c,-> a' a a 
      g-> a a a fs-> a a a e-> a a a d,-> b' b b 
      b-> g g g g e e e e cs cs cs cs a' a a a fs fs fs fs d d d d b b b b 
      g' g g g e e e e cs cs cs cs as as as as fs' fs fs 
      fs4 r16 fs-"rall..." fs fs fs4 r16 fs fs \DCfine e 
      \bar "||"
    }
  }
  
}
