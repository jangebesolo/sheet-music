\language "deutsch"
\header {
  title = "Hodie Christus natus est"
  subtitle = ""
  composer = "Samuel Scheidt"
}

global = { \key g \minor \time 3/2 }
Cantus = \relative { \partial 2 g'2 | b1 c2 | d1 es2 | f1 es2 d1 d2  \break}


A = \lyricmode { Pu -- er na -- tus in Beth -- le --hem, }
B = \lyricmode { Al -- le -- lu -- ja }

TextOne = \lyricmode { \A }
TextTwo = \lyricmode { Cov -- er his __ head with turf __ or stone, 'Tis all one, 'tis all one, with turf or stone, 'this all one. }
TextThree = \lyricmode { Pray for the soul of gen -- tle John, If you please you may, or let __ it a -- lone, 'tis all one. }

\score {
    <<  
      \new Voice = "melody" {
        \relative c' { \key g \minor \time 3/2
        \Cantus   
        }
      }
      \new Lyrics {
        \lyricsto "melody" {
          \TextOne \TextTwo \TextThree
        }
      }
    >>
  \layout {}
  \midi { \tempo 4 = 110 }
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
