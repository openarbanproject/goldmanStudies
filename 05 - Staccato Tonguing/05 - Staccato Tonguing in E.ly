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
      \key e \major
      \tempo "Allegro moderato"
      e'16-.\f e-. e-. e-. e8-. e16-. ds-. cs-. b-. cs-. ds-. 
      e-"sempre staccato" e e e e8 e16 ds cs b cs ds 
      e8 e16 gs b, e gs, b e, gs b e ds fs a fs ds b a8 r r \break
      fs'16 fs fs fs fs8 fs16 gs fs e ds cs ds ds ds ds ds8 ds16 e ds cs b a 
      b b b b b8 b16 ds fs ds b a gs b e gs e b gs8 r r \break
      cs16 cs cs cs cs8 cs16 ds fs e ds cs b b b b b8 b16 cs ds e b gs
      a a a a a b gs gs gs gs gs b fs fs fs b as cs b8 r r \break
      cs16 a e cs e a cs e a e cs a b gs e b e gs b e gs e b gs
      fs ds b' fs ds' b fs' ds b ds fs, b as cs e cs as fs b4 r8
      a16 gs fs e ds e fs gs a b cs ds e b gs' e b' gs e b gs e b8
      a'16 gs fs e ds e fs gs a b cs ds e8 e16 fs gs a b4 r8
      cs16 a e cs a e cs4 r8 b''16 gs e b gs e b4 r8
      a''16 fs ds b a a' gs e b-"rall." gs e gs' fs ds b ds e as, b4 r8 \break
      \bar "||"
      \tempo "a tempo"
      e16 e e e e8 e16 ds cs b cs ds e e e e e8 e16 ds cs b cs ds 
      e8 e16 gs b, e gs, b e, gs b e ds fs a fs ds b a8 r r \break
      fs'16 fs fs fs fs8 fs16 gs fs e ds cs ds ds ds ds ds8 ds16 e ds cs b a 
      b b b b b8 b16 ds fs ds b a gs b e gs e b gs8 r r \break
      cs16 cs cs cs cs8 cs16 ds fs e ds cs b b b b b8 b16 cs ds e b gs
      a a a a a b gs gs gs gs gs b fs fs fs b as cs b8 r r \break
      cs16 a e cs e a cs e a e cs a b gs e b e gs b e gs e b gs
      fs ds b' fs ds' b fs' ds b ds fs, b as cs e cs as fs b4 r8 \break
      a16 gs fs e ds e fs gs a b cs ds e b gs' e b' gs e b gs e b8
      a'16 gs fs e ds e fs gs a b cs ds e b gs' e b gs e8 r r      
      \bar "|."
    }
  }
  
}
