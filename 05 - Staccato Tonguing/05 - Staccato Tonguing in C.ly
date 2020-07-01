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
      \key c \major
      \tempo "Allegro moderato"
      c'16-.\f c-. c-. c-. c8-. c16-. b-. a-. g-. a-. b-. 
      c-"sempre staccato" c c c c8 c16 b a g a b 
      c8 c16 e g, c e, g c, e g c b d f d b g f8 r r \break
      d'16 d d d d8 d16 e d c b a b b b b b8 b16 c b a g f 
      g g g g g8 g16 b d b g f e g c e c g e8 r r \break
      a16 a a a a8 a16 b d c b a g g g g g8 g16 a b c g e
      f f f f f g e e e e e g d d d g fs a g8 r r \break
      a16 f c a c f a c f c a f g e c g c e g c e c g e
      d b g' d b' g d' b g b d, g fs a c a fs d g4 r8
      f16 e d c b c d e f g a b c g e' c g' e c g e c g8
      f'16 e d c b c d e f g a b c8 c16 d e f g4 r8
      a16 f c a f c a4 r8 g''16 e c g e c g4 r8
      f''16 d b g f f' e c g-"rall." e c e' d b g b c fs, g4 r8 \break
      \bar "||"
      \tempo "a tempo"
      c16 c c c c8 c16 b a g a b c c c c c8 c16 b a g a b 
      c8 c16 e g, c e, g c, e g c b d f d b g f8 r r \break
      d'16 d d d d8 d16 e d c b a b b b b b8 b16 c b a g f 
      g g g g g8 g16 b d b g f e g c e c g e8 r r \break
      a16 a a a a8 a16 b d c b a g g g g g8 g16 a b c g e
      f f f f f g e e e e e g d d d g fs a g8 r r \break
      a16 f c a c f a c f c a f g e c g c e g c e c g e
      d b g' d b' g d' b g b d, g fs a c a fs d g4 r8 \break
      f16 e d c b c d e f g a b c g e' c g' e c g e c g8
      f'16 e d c b c d e f g a b c g e' c g e c8 r r      
      \bar "|."
    }
  }
  
}
