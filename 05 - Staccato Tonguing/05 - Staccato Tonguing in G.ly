\version "2.20.0"
\language "english"

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
      \numericTimeSignature \time 6/8
      \key g \major
      \tempo "Allegro moderato"
      g''16-.\f g-. g-. g-. g8-. g16-. fs-. e-. d-. e-. fs-. 
      g-"sempre staccato" g g g g8 g16 fs e d e fs 
      g8 g16 b d, g b, d g, b d g fs a c a fs d c8 r r \break
      a'16 a a a a8 a16 b a g fs e fs fs fs fs fs8 fs16 g fs e d c 
      d d d d d8 d16 fs a fs d c b d g b g d b8 r r \break
      e16 e e e e8 e16 fs a g fs e d d d d d8 d16 e fs g d b
      c c c c c d b b b b b d a a a d cs e d8 r r \break
      e16 c g e g c e g c g e c d b g d g b d g b g d b
      a fs d' a fs' d a' fs d fs a, d cs e g e cs a d4 r8
      c16 b a g fs g a b c d e fs g d b' g d' b g d b g d8
      c'16 b a g fs g a b c d e fs g8 g16 a b c d4 r8
      e16 c g e c g e4 r8 d''16 b g d b g d4 r8
      c''16 a fs d c c' b g d-"rall." b g b' a fs d fs g cs, d4 r8 \break
      \bar "||"
      \tempo "a tempo"
      g16 g g g g8 g16 fs e d e fs g g g g g8 g16 fs e d e fs 
      g8 g16 b d, g b, d g, b d g fs a c a fs d c8 r r \break
      a'16 a a a a8 a16 b a g fs e fs fs fs fs fs8 fs16 g fs e d c 
      d d d d d8 d16 fs a fs d c b d g b g d b8 r r \break
      e16 e e e e8 e16 fs a g fs e d d d d d8 d16 e fs g d b
      c c c c c d b b b b b d a a a d cs e d8 r r \break
      e16 c g e g c e g c g e c d b g d g b d g b g d b
      a fs d' a fs' d a' fs d fs a, d cs e g e cs a d4 r8 \break
      c16 b a g fs g a b c d e fs g d b' g d' b g d b g d8
      c'16 b a g fs g a b c d e fs g d b' g d b g8 r r      
      \bar "|."
    }
  }
  
}
