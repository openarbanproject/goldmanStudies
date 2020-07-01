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
            title = "Alternate Tonguing and Slurring"
           % subtitle = "from PRACTICAL STUDIES for the CORNET (and TRUMPET)"
  }

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))
  
  % Instructions
  \markuplist { 
    \override-lines #'(baseline-skip . 2.5) {
      \paragraph {
      This study should be played with great care. Slur only the marked notes. 
      All sixteeth and eighths must be played as staccato and evenly as possible.
      In order to make the music sound light and brilliant, also play the second
      note of each slurred group-of-two very short. It is essential to accent the
      notes that are so marked. Play slowly at first.
      }
    }
  }

  \score {
    \header { composer = "E.F. Goldman" }
    \layout { \context { \Score \remove "Bar_number_engraver" }}
    \relative c'
    { 
      
      \numericTimeSignature \time 4/4
      \partial 4
      \key c \major
      g'16-.\mf g-. g-. g-. 
      a->( g) g-. g-. b->( g) g-. g-. c->( g) g-. g-. g-. g-. g-. g-.
      f->( g) g-. g-. e->( g) g-. g-. d->( g) g-. g-. g-. g-. g-. g-.
      b->( g) g-. g-. c->( g) g-. g-. d'->( g,) g-. g-. g-. g-. g-. g-.
      f->( g) g-. g-. d->( g) g-. g-. e->( g) g-. g-. g-. g-. g-. g-.
      a->( g) g-. g-. b->( g) g-. g-. c->( g) g-. g-. g-. g-. g-. g-.
      f->( g) g-. g-. e->( g) g-. g-. d->( g) g-. g-. g-. g-. g-. g-.
      b->( g) g-. g-. c->( g) g-. g-. d'->( g,) g-. g-. g-. g-. g-. g-.
      fs( g) b-. a-. g( f) e-. d-. c8-. r g'16-.\f g-. g-. g-.
      \key bf \major
      c->( g) g-"sim." g d'( g,) g g ef'( g,) g g g g g g
      c->( g) g g d'( g,) g g ef'( g,) g g g g g g
      c( d) ef d c( bf) a g fs( a) d, fs g( bf) d, g
      a( c) fs, a bf( d) g, bf c( ef) g f ef( d) c bf 
      a( c) ef d c( bf) a g fs( d) e fs g a bf c
      d( g,) a bf c d ef f g( a) bf g ef c a ef'
      d( g) bf, d c( ef) a, c bf( d) g, bf a( c) fs, a
      g\<( d) e fs g a bf c d( g) bf g\! d\> bf g d\! g4 r r g16 g g g 
      \bar "||" \key c \major
      a->\mf( g) g g b->( g) g g c->( g) g g g g g g
      f->( g) g g e->( g) g g d->( g) g g g g g g
      b->( g) g g c->( g) g g d'->( g,) g g g g g g
      f->( g) g g d->( g) g g e->( g) g g g g g g
      a->( g) g g b->( g) g g c->( g) g g g g g g
      f->( g) g g e->( g) g g d->( g) g g g g g g
      b->( g) g g c->( g) g g d'->( g,) g g g g g g
      fs( g) b a g( f) e d c8 fs16\< g a b c d\!
      e->\f( g,) g g g'->( g,) g g f'->( g,) g g e'->( g,) g g
      d'8-> e,16 f g a b c d->( g,) g g f'->( g,) g g
      e'->( g,) g g d'->( g,) g g c8-> fs,16 g a b c d
      e->( g,) g g g'->( g,) g g f'->( g,) g g e'->( g,) g g
      d'8-> e,16 f g a b c d->( g,) g g f'->( g,) g g
      e'->( g,) g g d'->( g,) g g c->( b) c-. e-. g,-. c-. e,-. g-.
      c,( b) c-. e-. g-. c-. e-. g-. c8 r
      \bar "||"
    }
  }
  
}
