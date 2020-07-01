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
      \key g \major
      g''16-.\mf g-. g-. g-. fs-. fs-. fs-. fs-. g-. g-. g-. g-. d-. d-. d-. d-. 
      e-. fs-. g-. a-. g-. fs-. e-. fs-. g-. d-. b'-. d,-. a'-. d,-. fs-. d-.
      g-. g-. g-. g-. fs-. fs-. fs-. fs-. g-. g-. g-. g-. d-. d-. d-. d-. 
      e-. fs-. g-. a-. g-. fs-. e-. fs-. g-. d-. b'-. d,-. g8-. r
      a16-"sempre staccato" a a a d, d d d b' b b b d, d d d c' b a c b a g b a d, d d d d d d
      a' a a a d, d d d b' b b b d, d d d c' b a c b a g b a4 r16 d, e fs
      g16 g g g fs fs fs fs g g g g d d d d e fs g a g fs e fs g d b' d, a' d, fs d
      g g g g fs fs fs fs g g g g d d d d e fs g a g fs e fs g d b' d, g8 r \Fine
      \bar "||" \break
      \key c \major
      c16\f g e c e g c g c g e c e g c g f g a f d e f d b c d b g g' a b
      c g e c e g c g c g e c e g c g f g a f d e f d b c d b g g' g g
      f-> g g g e-> g g g d-> g g g c,-> a' a a 
      g-> a a a f-> a a a e-> a a a d,-> b' b b
      a-> b b b g-> b b b f-> b b b e,-> c' c c 
      b-> c c c a-> c c c g-> c c c f,-> d' d d 
      c-> d d d b-> d d d a-> d d d g,-> e' e e 
      e-> c c c c a a a a fs fs fs fs d' d d d b b b b g g g g e e e e 
      c' c c c a a a a fs fs fs fs ds ds ds ds b' b b 
      b4 r16 b-"rall..." b b b4 r16 b b \DCfine a 
      \bar "||"
    }
  }
  
}
