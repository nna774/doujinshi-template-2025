#import "./template.typ": *

#show: book.with(
  title: "象のたまご",
  subtitle: "おいしい象のたまご",
  author: "久我山 菜々",
)

= 第1章

本文をここに書きます。

```
irb(main):001> require 'securerandom'
=> true
irb(main):002> SecureRandom.send(:choose, "象のたまごはおいしいぞう".chars, 10)
=> "いごはまのおうはのお"
```

`SecureRandom.send(:choose, "象のたまごはおいしいぞう".chars, 10)`

`long long string is long long long string is long long long string is long long long string is long long long string is long long long string is long long long string is long`

- りすと
- あいてむ
- あいてむむ
 - ふかい
 - ふかいい
- あさい

URI: #link("https://nna774.net/img/1012_filtered.jpg")

image #figure(
  image("1012_filtered.jpg", width: 20%),
  caption: [1012 image.],
) <fig>

ほげほげげほげ @fig に言及#footnote[これは脚注]
