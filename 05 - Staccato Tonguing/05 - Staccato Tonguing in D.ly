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
      \key d \major
      \tempo "Allegro moderato"
      d'16-.\f d-. d-. d-. d8-. d16-. cs-. b-. a-. b-. cs-. 
      d-"sempre staccato" d d d d8 d16 cs b a b cs 
      d8 d16 fs a, d fs, a d, fs a d cs e g e cs a g8 r r \break
      e'16 e e e e8 e16 fs e d cs b cs cs cs cs cs8 cs16 d cs b a g 
      a a a a a8 a16 cs e cs a g fs a d fs d a fs8 r r \break
      b16 b b b b8 b16 cs e d cs b a a a a a8 a16 b cs d a fs
      g g g g g a fs fs fs fs fs a e e e a gs b a8 r r \break
      b16 g d b d g b d g d b g a fs d a d fs a d fs d a fs
      e cs a' e cs' a e' cs a cs e, a gs b d b gs e a4 r8
      g16 fs e d cs d e fs g a b cs d a fs' d a' fs d a fs d a8
      g'16 fs e d cs d e fs g a b cs d8 d16 e fs g a4 r8
      b16 g d b g d b4 r8 a''16 fs d a fs d a4 r8
      g''16 e cs a g g' fs d a-"rall." fs d fs' e cs a cs d gs, a4 r8 \break
      \bar "||"
      \tempo "a tempo"
      d16 d d d d8 d16 cs b a b cs d d d d d8 d16 cs b a b cs 
      d8 d16 fs a, d fs, a d, fs a d cs e g e cs a g8 r r \break
      e'16 e e e e8 e16 fs e d cs b cs cs cs cs cs8 cs16 d cs b a g 
      a a a a a8 a16 cs e cs a g fs a d fs d a fs8 r r \break
      b16 b b b b8 b16 cs e d cs b a a a a a8 a16 b cs d a fs
      g g g g g a fs fs fs fs fs a e e e a gs b a8 r r \break
      b16 g d b d g b d g d b g a fs d a d fs a d fs d a fs
      e cs a' e cs' a e' cs a cs e, a gs b d b gs e a4 r8 \break
      g16 fs e d cs d e fs g a b cs d a fs' d a' fs d a fs d a8
      g'16 fs e d cs d e fs g a b cs d a fs' d a fs d8 r r      
      \bar "|."
    }
  }
  
}
