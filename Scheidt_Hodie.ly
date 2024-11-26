\language "deutsch"
\header {
  title = "Hodie Christus natus est"
  subtitle = ""
  composer = "Samuel Scheidt"
}

global = { \key d \minor \time 3/2 }
CantusAa = { g2 | b1 c2 | d1 e2 | f1 e2 d1 }
CantusAb =  { d2 | c4( d es2) d c1 g2 | g4( a b2) a | g1 }
Cantus = \relative { 
  \CantusAa \CantusAb 
  \CantusAa \CantusAb 
  }

A = \lyricmode { Pu -- er na -- tus in Beth -- le -- hem, }
B = \lyricmode { Al -- le -- lu -- ja }

TextOne = \lyricmode { \A \B \B }

\score {
    <<  
      \new Voice = "melody" {
        \relative c' { \global
        \Cantus   
        }
      }
      \new Lyrics {
        \lyricsto "melody" {
          \TextOne 
        }
      }
    >>
  \layout {}
  \midi { \tempo 4 = 210 }
}

\score {
    \new ChoirStaff  <<
      \new Staff = "ZeileEins"  <<
        \new Voice = "Eins" { \global \voiceOne }
      >> \new Lyrics \lyricsto "Eins" { \TextOne } 

      \new Staff = "ZeileZwei"  <<
        \new Voice = "Zwei" { \global \voiceTwo }
      >> \new Lyrics \lyricsto "Zwei" { \TextTwo } 

      \new Staff = "ZeileDrei"  <<
        \new Voice = "Drei" { \global \voiceThree }
      >> \new Lyrics \lyricsto "Drei" { \TextThree }    
    >>
    \layout{}
    \midi { \tempo 4 = 110 }
}
