#let template(body) = {
  
  import emoji: pencil
  import "@preview/clean-math-paper:0.2.0": *
  import "@preview/game-theoryst:0.1.0": *
  let date = datetime.today().display("[month repr:long] [day], [year]")

  
  show: template.with(
  title: "Notes on Introduction to Game Theory",
  authors: (
    (name: "Nhan Nguyen"),
  ),
  date: date,
  heading-color: rgb("#0000ff"),
  link-color: rgb("#008002"),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: "This is my notes and comments, and exercise answers on the book Introduction to Game Theory by Martin J. Osborne",
  keywords: ("Game Theory",),
  AMS: ()
)

  show figure.caption: emph
  set footnote(numbering: "*")

  let item-counter = counter("item-counter")
  
  show enum: it => {
    if it.start != 0 { return it }
    let args = it.fields()
    let items = args.remove("children")
    context enum(..args, start: item-counter.get().first() + 1, ..items)
    item-counter.update(i => i + it.children.len())
  }
  body
}
