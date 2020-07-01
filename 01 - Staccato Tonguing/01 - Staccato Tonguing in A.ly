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
      \key a \major
      a'16-.\mf a-. a-. a-. gs-. gs-. gs-. gs-. a-. a-. a-. a-. e-. e-. e-. e-. 
      fs-. gs-. a-. b-. a-. gs-. fs-. gs-. a-. e-. cs'-. e,-. b'-. e,-. gs-. e-.
      a-. a-. a-. a-. gs-. gs-. gs-. gs-. a-. a-. a-. a-. e-. e-. e-. e-. 
      fs-. gs-. a-. b-. a-. gs-. fs-. gs-. a-. e-. cs'-. e,-. a8-. r
      b16-"sempre staccato" b b b e, e e e cs' cs cs cs e, e e e d' cs b d cs b a cs b e, e e e e e e
      b' b b b e, e e e cs' cs cs cs e, e e e d' cs b d cs b a cs b4 r16 e, fs gs
      a16 a a a gs gs gs gs a a a a e e e e fs gs a b a gs fs gs a e cs' e, b' e, gs e
      a a a a gs gs gs gs a a a a e e e e fs gs a b a gs fs gs a e cs' e, a8 r \Fine
      \bar "||" \break
      \key d \major
      d16\f a fs d fs a d a d a fs d fs a d a g a b g e fs g e cs d e cs a a' b cs
      d a fs d fs a d a d a fs d fs a d a g a b g e fs g e cs d e cs a a' a a
      g-> a a a fs-> a a a e-> a a a d,-> b' b b 
      a-> b b b g-> b b b fs-> b b b e,-> cs' cs cs
      b-> cs cs cs a-> cs cs cs g-> cs cs cs fs,-> d' d d 
      cs-> d d d b-> d d d a-> d d d g,-> e' e e 
      d-> e e e cs-> e e e b-> e e e a,-> fs' fs fs 
      fs-> d d d d b b b b gs gs gs gs e' e e e cs cs cs cs a a a a fs fs fs fs 
      d' d d d b b b b gs gs gs gs es es es es cs' cs cs 
      cs4 r16 cs-"rall..." cs cs cs4 r16 cs cs \DCfine b 
      \bar "||"
    }
  }
  
}
