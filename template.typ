// 仕上がりサイズ: B5
#let trim-width = 182mm
#let trim-height = 257mm
#let bleed = 3mm // 塗り足し
// 仕上がりサイズでの余白
#let margin-top = 25mm
#let margin-bottom = 25mm
#let margin-horizon = 20mm

#let text-font = "Hiragino Mincho ProN" // Todo
#let font-size = 9pt

#let toc() = context {
  // todo
}

#let book(
  title: "本のタイトル",
  subtitle: "サブタイトル",
  author: "著者名",
  body
) = {
  set document(
    title: title,
    author: author,
    date: auto,
  )
  set page(
    width: trim-width + bleed * 2,
    height: trim-height + bleed * 2,
    margin: (
      top: margin-top + bleed,
      bottom: margin-bottom + bleed,
      x: margin-horizon + bleed,
    ),
    header-ascent: 40%,
    footer-descent: 30%,
  )
  set text(
    lang: "ja",
    font: text-font,
    size: font-size,
  )

  show raw.where(block: true): body => {
    box(
      fill: luma(95%),
      inset: 1em,
      width: 100%,
      radius: 4pt,
      text(size: 8pt)[
        #body
      ]
    )
  }
  show raw.where(block: false): body => {
    set text(size: 8pt)
    body
  }

  {
    let titlepageitem(body, size: 22pt, vt: 0%) = {
      set align(center)
      set text(size: size)
      v(vt)
      body
    }
    [
      #titlepageitem(title, size: 22pt, vt: 20%)
      #titlepageitem(subtitle, size: 18pt)
      #titlepageitem(author, size: 14pt, vt: 40%)
      #pagebreak()
    ]
  }

  body
}
