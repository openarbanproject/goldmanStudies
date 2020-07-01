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
      \key af \major
      af'16-.\mf af-. af-. af-. g-. g-. g-. g-. af-. af-. af-. af-. ef-. ef-. ef-. ef-. 
      f-. g-. af-. bf-. af-. g-. f-. g-. af-. ef-. c'-. ef,-. bf'-. ef,-. g-. ef-.
      af-. af-. af-. af-. g-. g-. g-. g-. af-. af-. af-. af-. ef-. ef-. ef-. ef-. 
      f-. g-. af-. bf-. af-. g-. f-. g-. af-. ef-. c'-. ef,-. af8-. r
      bf16-"sempre staccato" bf bf bf ef, ef ef ef c' c c c ef, ef ef ef df' c bf df c bf af c bf ef, ef ef ef ef ef ef
      bf' bf bf bf ef, ef ef ef c' c c c ef, ef ef ef df' c bf df c bf af c bf4 r16 ef, f g
      af16 af af af g g g g af af af af ef ef ef ef f g af bf af g f g af ef c' ef, bf' ef, g ef
      af af af af g g g g af af af af ef ef ef ef f g af bf af g f g af ef c' ef, af8 r \Fine
      \bar "||" \break
      \key df \major
      df16\f af f df f af df af df af f df f af df af gf af bf gf ef f gf ef c df ef c af af' bf c
      df af f df f af df af df af f df f af df af gf af bf gf ef f gf ef c df ef c af af' af af
      gf-> af af af f-> af af af ef-> af af af df,-> bf' bf bf 
      af-> bf bf bf gf-> bf bf bf f-> bf bf bf ef,-> c' c c
      bf-> c c c af-> c c c gf-> c c c f,-> df' df df 
      c-> df df df bf-> df df df af-> df df df gf,-> ef' ef ef 
      df-> ef ef ef c-> ef ef ef bf-> ef ef ef af,-> f' f f 
      f-> df df df df bf bf bf bf g g g g ef' ef ef ef c c c c af af af af f f f f 
      df' df df df bf bf bf bf g g g g e e e e c' c c 
      c4 r16 c-"rall..." c c c4 r16 c c \DCfine bf 
      \bar "||"
    }
  }
  
}
