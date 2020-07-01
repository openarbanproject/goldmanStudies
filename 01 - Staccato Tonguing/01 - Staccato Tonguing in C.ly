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
            % subtitle = "from PRACTICAL STUDIES for the CORNET (and TRUMPET)"
  }
  
  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))
  
  % Instructions
  \markuplist { 
    \override-lines #'(baseline-skip . 2.5) {
      \paragraph {
      This staccato study should be practised slowly at first, and also with very
      even tonguing. After it has been mastered in slow tempo, begin to play it
      faster. In fact, it should be played as quickly as possible without sacrificing
      smoothness or clarity.
      }
    }
  }
  
  \score {
    \header { composer = "E.F. Goldman" }
    \layout { \context { \Score \remove "Bar_number_engraver" }}
    \relative c'
    { 
      
      \numericTimeSignature \time 4/4
      \key c \major
      c'16-.\mf c-. c-. c-. b-. b-. b-. b-. c-. c-. c-. c-. g-. g-. g-. g-. 
      a-. b-. c-. d-. c-. b-. a-. b-. c-. g-. e'-. g,-. d'-. g,-. b-. g-.
      c-. c-. c-. c-. b-. b-. b-. b-. c-. c-. c-. c-. g-. g-. g-. g-. 
      a-. b-. c-. d-. c-. b-. a-. b-. c-. g-. e'-. g,-. c8-. r
      d16-"sempre staccato" d d d g, g g g e' e e e g, g g g f' e d f e d c e d g, g g g g g g
      d' d d d g, g g g e' e e e g, g g g f' e d f e d c e d4 r16 g, a b
      c16 c c c b b b b c c c c g g g g a b c d c b a b c g e' g, d' g, b g
      c c c c b b b b c c c c g g g g a b c d c b a b c g e' g, c8 r \Fine
      \bar "||" \break
      \key f \major
      f16\f c a f a c f c f c a f a c f c bf c d bf g a bf g e f g e c c' d e
      f c a f a c f c f c a f a c f c bf c d bf g a bf g e f g e c c' c c
      bf-> c c c a-> c c c g-> c c c f,-> d' d d 
      c-> d d d bf-> d d d a-> d d d g,-> e' e e
      d-> e e e c-> e e e bf-> e e e a,-> f' f f 
      e-> f f f d-> f f f c-> f f f bf,-> g' g g 
      f-> g g g e-> g g g d-> g g g c,-> a' a a 
      a-> f f f f d d d d b b b b g' g g g e e e e c c c c a a a a 
      f' f f f d d d d b b b b gs gs gs gs e' e e 
      e4 r16 e-"rall..." e e e4 r16 e e \DCfine d 
      \bar "||"
    }
  }
  
}
