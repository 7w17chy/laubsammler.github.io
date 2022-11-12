# Nichtdeterministischer Kellerautomat (NKA)

Die Eigenschaften des NEA treffen gleichermaßen zu, jedoch besitzt
der NKA zusätzlich einen Keller, der wie ein Stapel bzw. "stack" funktioniert:
Bei jedem Übergang wird ein Element \\( e_{raus} \\) aus dem Keller geholt und
ein Element \\( e_{rein} \\) wieder in diesen hineingelegt. Dabei sei nicht ausgeschlossen
dass:

- \\( e_{raus} = e_{rein} \\) (das oberste Kellerelement bleibt unverändert)
- \\( e_{rein} = \varepsilon \\) (prinzipiell: das oberste Kellerelement wird "gelöscht")

## Formaler Aufbau
Ein NKA wird durch das 7-Tupel \\( K = (Q, \Sigma, \Gamma, \delta, q_{0}, \\#, E) \\)
beschrieben:

| Element | Bedeutung |
| :-: | :-: |
| \\( Q \\) | Zustandsmenge |
| \\( \Sigma \\) | Eingabealphabet |
| \\( \Gamma \\) | Kelleralphabet |
| \\( \delta \\) | Uebergangsfunktion(en) |
| \\( q_{0} \in Q \\) | Startzustand |
| \\( \\# \in \Gamma \\) | Anfangssymbol im Keller |
| \\( E \subseteq Q \\) | Menge von Endzustaenden |

## Die Übergangsfunktion
Die Übergangsfunktion \\( \delta \\) (derer es mehrere geben kann, \\( \delta_{0}, \delta_{1},
\dots, \delta_{n} \\)) ist grundlegend wie folgt definiert:

\\[
\begin{equation}
\delta: q_{n} \times \Sigma \times \Gamma \rightarrow q_{a} \times \Gamma*.\nonumber
\end{equation}
\\]

\\( \delta \\) ist mit dem momentanen Zustand \\( q_{n} \\)  ( \\( q_{n} \in Q \\)), dem Symbol dass sich im
Keller am obersten befindet \\( \Gamma \\) und dem momentanen
Zeichen unter dem Lesekopf, also dem aktuell betrachteten Zeichen auf dem Eingabeband (das
auch \\( \varepsilon \\), also leer sein kann), parametrisiert.
Sie produziert als Ergebnis einen neuen Zustand \\( q_{a} \\) und ein Zeichen, das in den Keller
gelegt wird.

## Warum ist \\( \Sigma \ne \Gamma \\)?
Obwohl \\( \Sigma = \Gamma \\) sein kann, ist dies möglicherweise nicht gewünscht. Dadurch
dass diese Vorraussetzung *nicht* gilt, wird Flexibilität gewonnen; so können
beispielsweise Zeichen in den Keller gelegt werden, die nicht auf dem Eingabeband zu
finden sind und umgekehrt.

## Warum gibt es \\( \\# \\)?
Zur Erinnerung: \\( \\# \\) ist das Anfangssymbol im Keller. Wird also ein Zeichen aus dem Keller
genommen und es entpuppt sich als \\( \\# \\), so ist dies als "der Keller ist leer"-Signal zu
interpretieren.

## Huch, wo sind die Endzustaende?
Das "nichtdeterministisch" in NKA signalisiert es schon: Es gibt keine Endzustände.  Der
Automat endet, wenn das Eingabeband abgearbeitet ist, d. h. das Wort darauf vollständig
gelesen ist. Ist der Keller ebenfalls leer, so ist das Wort in der durch die Grammatik/den
Automaten angegebenen Sprache enthalten und der Automat endet erfolgreich, andernfalls
nicht.
