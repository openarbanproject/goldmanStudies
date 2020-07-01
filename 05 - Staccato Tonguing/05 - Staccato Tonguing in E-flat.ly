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
      \key ef \major
      \tempo "Allegro moderato"
      ef'16-.\f ef-. ef-. ef-. ef8-. ef16-. d-. c-. bf-. c-. d-. 
      ef-"sempre staccato" ef ef ef ef8 ef16 d c bf c d 
      ef8 ef16 g bf, ef g, bf ef, g bf ef d f af f d bf af8 r r \break
      f'16 f f f f8 f16 g f ef d c d d d d d8 d16 ef d c bf af 
      bf bf bf bf bf8 bf16 d f d bf af g bf ef g ef bf g8 r r \break
      c16 c c c c8 c16 d f ef d c bf bf bf bf bf8 bf16 c d ef bf g
      af af af af af bf g g g g g bf f f f bf a c bf8 r r \break
      c16 af ef c ef af c ef af ef c af bf g ef bf ef g bf ef g ef bf g
      f d bf' f d' bf f' d bf d f, bf a c ef c a f bf4 r8
      af16 g f ef d ef f g af bf c d ef bf g' ef bf' g ef bf g ef bf8
      af'16 g f ef d ef f g af bf c d ef8 ef16 f g af bf4 r8
      c16 af ef c af ef c4 r8 bf''16 g ef bf g ef bf4 r8
      af''16 f d bf af af' g ef bf-"rall." g ef g' f d bf d ef a, bf4 r8 \break
      \bar "||"
      \tempo "a tempo"
      ef16 ef ef ef ef8 ef16 d c bf c d ef ef ef ef ef8 ef16 d c bf c d 
      ef8 ef16 g bf, ef g, bf ef, g bf ef d f af f d bf af8 r r \break
      f'16 f f f f8 f16 g f ef d c d d d d d8 d16 ef d c bf af 
      bf bf bf bf bf8 bf16 d f d bf af g bf ef g ef bf g8 r r \break
      c16 c c c c8 c16 d f ef d c bf bf bf bf bf8 bf16 c d ef bf g
      af af af af af bf g g g g g bf f f f bf a c bf8 r r \break
      c16 af ef c ef af c ef af ef c af bf g ef bf ef g bf ef g ef bf g
      f d bf' f d' bf f' d bf d f, bf a c ef c a f bf4 r8 \break
      af16 g f ef d ef f g af bf c d ef bf g' ef bf' g ef bf g ef bf8
      af'16 g f ef d ef f g af bf c d ef bf g' ef bf g ef8 r r      
      \bar "|."
    }
  }
  
}
