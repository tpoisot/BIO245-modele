#set page(
  paper: "us-letter",
  margin: (left: 4cm, right: 4cm, top: 2cm, bottom: 2cm),
)
#set par(
  justify: false,
  leading: 0.52em,
)

#import "@preview/scienceicons:0.1.0": github-icon

#set text(font: "Libertinus Serif", size: 12pt, lang: "fr")
#show heading: set text(font: "Libertinus Sans")
#show math.equation: set text(font: "Libertinus Math")
#show raw: set text(font: "JuliaMono", size: 9.8pt)
#show raw.where(block: false): set text(fill: maroon)
#show raw.where(block: true, lang: "julia"): it => block(
  fill: luma(97%),
  inset: 9pt,
  width: 100%,
  radius: 1pt,
  stroke: 0.2pt + luma(40%),
  text(fill: luma(20%), size: 8pt, it),
)
#show raw.where(block: true, lang: none): it => block(
  fill: luma(99%),
  inset: 9pt,
  width: 100%,
  radius: 1pt,
  stroke: 0.2pt + luma(80%),
  text(fill: luma(20%), size: 8pt, it),
)
#show raw.where(block: true, lang: "raw"): it => block(
  fill: luma(97%),
  inset: 9pt,
  width: 100%,
  radius: 1pt,
  stroke: (paint: maroon, thickness: 0.2pt, dash: "dashed"),
  text(fill: maroon, size: 8pt, it),
)

// This is a nasty-ass POS hack but it's because [@cite] gets turned into a ref
// instead of a proper cite
#show cite.where(form: "prose"): it => cite(it.key)
#show link: set text(font: "Libertinus Sans", fill: blue)
#show heading.where(level: 2): set text(weight: 400)

#image("logo.png", width: 3cm)
#set align(right)

#v(6fr)

#text(weight: 600, size: 18pt, font: "Libertinus Sans")[
  Titre du travail
]

#v(3fr)

Premier Auteur (XXXXXXXX)\
#github-icon() `premierAuteur`
#linebreak()
#linebreak()
Deuxième Auteur (XXXXXXXX)\
#github-icon() `DeuxiAut`
#linebreak()
#linebreak()

#v(3fr)

#text(size: 10pt, font: "Libertinus Sans")[
Travail présenté à Timothée Poisot dans le cadre du cours \
BIO 2045 "Simuler le Vivant"
#v(1em)
#link("https://github.com/tpoisot/BIO245-modele", "Source du projet")
#v(1em)
#datetime.today().display()
]


#v(1fr)

#pagebreak()

#set align(left)
#set page(
  margin: (left: 2.5cm, right: 2.5cm, top: 2cm, bottom: 2cm),
)

#outline(
  title: "Table des matières",
  depth: 3,
);

#counter(page).update(0)

#pagebreak()
#set page(numbering: "1 / 1")

= Introduction
<introduction>
```julia
import Random
Random.seed!(123456)
```

```
Random.TaskLocalRNG()
```

= Présentation du modèle
<présentation-du-modèle>
= Implémentation
<implémentation>
= Présentation des résultats
<présentation-des-résultats>
= Discussion
<discussion>

#context {
  if query(cite).dedup().len() > 0 {
    bibliography("bibliography.bib", style: "american-physics-society", title: "Bibliographie")
  }
}
