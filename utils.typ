#import "@preview/clean-math-paper:0.2.0": *
#import "@preview/game-theoryst:0.1.0": *
#let mathpar(content) = {
  align(center)[
    #block(width: 90%)[
      #align(left)[#content]
    ]
  ]
}
#let exercise = my-mathblock(
    blocktitle: [_Exercise_],
)
