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
           % subtitle = "from PRACTICAL STUDIES for the CORNET (and TRUMPET)"
  }
  
  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))
  
  % Instructions
  \markuplist { 
    \override-lines #'(baseline-skip . 2.5) {
      \paragraph {
      This is another study that will help to improve the tonguing. Be careful to
      play all eighth and sixteeth ntoes very staccato, and try to maintain the
      same quality of tone throughout. A brilliant style is required for music of
      this kind.
      }
    }
  }
  
  \score {
    \header { composer = "E.F. Goldman" }
    \layout { \context { \Score \remove "Bar_number_engraver" }}
    \relative c'
    {
      \numericTimeSignature \time 6/8
      \key f \major
      \tempo "Allegro moderato"
      f'16-.\f f-. f-. f-. f8-. f16-. e-. d-. c-. d-. e-. 
      f-"sempre staccato" f f f f8 f16 e d c d e 
      f8 f16 a c, f a, c f, a c f e g bf g e c bf8 r r
      g'16 g g g g8 g16 a g f e d e e e e e8 e16 f e d c bf 
      c c c c c8 c16 e g e c bf a c f a f c a8 r r
      d16 d d d d8 d16 e g f e d c c c c c8 c16 d e f c a
      bf bf bf bf bf c a a a a a c g g g c b d c8 r r
      d16 bf f d f bf d f bf f d bf c a f c f a c f a f c a
      g e c' g e' c g' e c e g, c b d f d b g c4 r8
      bf16 a g f e f g a bf c d e f c a' f c' a f c a f c8
      bf'16 a g f e f g a bf c d e f8 f16 g a bf c4 r8
      d16 bf f d bf f d4 r8 c''16 a f c a f c4 r8
      bf''16 g e c bf bf' a f c-"rall." a f a' g e c e f b, c4 r8
      \bar "||"
      \tempo "a tempo"
      f16 f f f f8 f16 e d c d e f f f f f8 f16 e d c d e 
      f8 f16 a c, f a, c f, a c f e g bf g e c bf8 r r
      g'16 g g g g8 g16 a g f e d e e e e e8 e16 f e d c bf 
      c c c c c8 c16 e g e c bf a c f a f c a8 r r
      d16 d d d d8 d16 e g f e d c c c c c8 c16 d e f c a
      bf bf bf bf bf c a a a a a c g g g c b d c8 r r
      d16 bf f d f bf d f bf f d bf c a f c f a c f a f c a
      g e c' g e' c g' e c e g, c b d f d b g c4 r8
      bf16 a g f e f g a bf c d e f c a' f c' a f c a f c8
      bf'16 a g f e f g a bf c d e f c a' f c a f8 r r      
      \bar "|."
    }
  }
  
}
