\header {
  title = "Happy Xmas"
  composer = "John Lennon"
}

\language "deutsch"

global = { \key a \major \time 6/8 }

Sopran = \relative c'' {
  a4. gis h a h ais cis h 
  a gis fis gis a gis h a
  \key d \major
  d cis e d e dis fis 
  e d cis h cis d cis e d
  \bar "|."
}

Alt = \relative c' {
  cis4. h d cis d cis e d
  d d d d cis h d cis
  fis e g fis g fis a g
  g g g g fis e g fis

}
Tenor = \relative c' {
  e4. e e e fis fis fis fis
  h, h h h  e, e e e4 g8
  \key d \major
  a4. a a a h h h h 
  e e d e a, a a a
}

Bass = \relative c {
  a'4. a a a h h h h 
  e, e e e a, a a a
  d d d d e e e e
  a a a a d, d d d
}
Lyrics = \lyricmode {
  War is ov -- ver if you want it.
  

}

\score {
  \new ChoirStaff <<
    
    \new Staff = "Frauen" <<
      \new Voice = "Sopran" { \global \voiceOne \Sopran }
      \new Voice = "Alt" { \voiceTwo \Alt }
      \new Lyrics \lyricsto "Sopran" { \Lyrics }
    >>

    \new Staff = "Männer" <<
      \clef bass
      \new Voice = "Tenor" { \global \voiceOne \Tenor }
      \new Voice = "Bass" { \voiceTwo \Bass }
      %\new Lyrics \lyricsto "Sopran" { \Lyrics }
    >>
  >>
  
  \layout {}
  \midi {}
}
