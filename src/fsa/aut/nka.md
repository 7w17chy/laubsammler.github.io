# Nichtdeterministischer Kellerautomat (NKA)

Die Eigenschaften des NEA treffen gleichermaßen zu, jedoch besitzt
der NKA zusätzlich einen Keller, der wie ein Stapel bzw. "stack" funktioniert:
Bei jedem Übergang wird ein Element \\( e_{raus} \\) aus dem Keller geholt und
ein Element \\( e_{rein} \\) wieder in diesen hineingelegt. Dabei sei nicht ausgeschlossen
dass:

- \\( e_{raus} = e_{rein} \\) (das oberste Kellerelement bleibt unverändert)
- \\( e_{rein} = \varepsilon \\) (prinzipiell: das oberste Kellerelement wird "gelöscht")

## Formaler Aufbau
Ein NKA wird durch das 6-Tupel \\( K = (Q, \Sigma, \Gamma, \delta, q_{0}, \\#) \\)
beschrieben:

| Element | Bedeutung |
| :-: | :-: |
| \\( Z \\) | Zustandsmenge |
| \\( \Sigma \\) | Eingabealphabet |
| \\( \Gamma \\) | Kelleralphabet |
| \\( \delta \\) | Übergangsfunktion |
| \\( q_{0} \in Z \\) | Startzustand |
| \\( \\# \in \Gamma \\) | Anfangssymbol im Keller |

## Die Übergangsfunktion
Die Übergangsfunktion \\( \delta \\) (derer es mehrere geben kann, \\( \delta_{0}, \delta_{1},
\dots, \delta_{n} \\)) ist grundlegend wie folgt definiert:

\\[
\begin{equation}
\delta: q_{n} \times \Sigma \times \Gamma \rightarrow q_{a} \times \Gamma*.\nonumber
\end{equation}
\\]

\\( \delta \\) ist mit dem momentanen Zustand \\( q_{n} \\)  ( \\( q_{n} \in Z \\)), dem Symbol dass sich im
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

## Huch, wo sind die Endzustände?[^wikipedia]
Bei NKAs ist es möglich, auf die Definition der Endzustände zu verzichen; stattdessen definiert man,
dass der Automat das Eingabewort akzeptiert, wenn nach der Abarbeitung des Eingabewortes auf dem Eingabeband
der Keller leer ist.

[^wikipedia]: Artikel zum Thema Kellerautomaten auf [Deutsch](https://de.wikipedia.org/wiki/Kellerautomat) und [Englisch](https://en.wikipedia.org/wiki/Pushdown_automaton)
