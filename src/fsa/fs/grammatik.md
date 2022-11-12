# Grammatik

Die Grammatik einer formalen Sprache ist das 4-Tupel \\( G \\):

| Definition | Beispiel | Beschreibung |
|:-: | :-: | :-: |
| \\( G = (N, T, P, S) \\) | \\( L = \{ S \rightarrow aSb \vert \varepsilon \} \\) | Grammatik \\( G \\), die eine  Sprache \\( L \\) definiert |
| Nichtterminalsymbole (N) | \\( \\{S\\} \\) | Zeichen, die sich beim Wortbildungsprozess ändern können/werden/müssen (z. B. Produktionen) |
| Terminalsymbole (T) | \\( \\{a, b, \varepsilon\\} \\) | Zeichen, die sich beim Wortbildungsprozess nicht mehr verändern |
| Produktion(en) (P) | \\( \\{S \rightarrow aSb \vert \varepsilon\\} \\) | Zeichen, die neue Zeichen produzieren |
| Startsymbol (S) | \\( S \\) | Zeichen, mit dem ein Wort beginnt (in der Regel eine Produktion) |
