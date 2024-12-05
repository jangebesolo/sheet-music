\header {
  title = "Hallelujah"
  composer = "Cohen"
}

\language "deutsch"

global = { \key e \minor \time 6/8 }

Melodie = \relative c'' { 
  \partial 4. 
  h4 d8
  \repeat volta 3 {
    e4. e r e4 d8 h4. h r
    h4 d8 e4. e r e4 d8
  }
  \alternative {
    { h4.( h8) c h a4. h4 d8 }
    { h4.( h8) c h a4.( a4) g8 g2. }
  }
  \bar "|."
}

Lyrics = \lyricmode {
  Hal -- le -- lu -- jah,
  hal -- le -- lu -- jah,
  hal -- le -- lu -- jah,
  hal -- le -- lu -- _ _ jah.
  Hal -- le --
  lu

}

\score {
  \new ChoirStaff <<
    
    \new Staff = "melodie" <<
      \new Voice = "Melodie" {
        \global
        \Melodie
      }
    >>

    \new Lyrics \lyricsto "Melodie" {
      \Lyrics
    }

    \new Staff {
      \new Voice {
        \Melodie
      }
    }
  >>
  \layout {}
  \midi {}
}