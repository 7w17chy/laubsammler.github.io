# Deterministischer endlicher Automat (DEA)

- gehört zur Kategorie der Akzeptoren: Wort in Sprache akzeptiert, wenn das Eingabeband leer ist und der aktuelle Zustand ein Endzustand ist
- zu Englisch: "deterministic finite automaton"
- Deterministisch: Bei gleichen Eingabewerten erfolgt stets die gleiche Ausgabe/das gleiche Ergebnis
- besteht zu jeder Zeit in der Ausführung nur eine Fortsetzungsmöglichkeit dieser
- Befindet sich stets in genau einem Zustand

## Formaler Aufbau

Der DEA wird durch ein 5-Tupel \\( D = (Z, \Sigma, \delta, q_{0}, E) \\) beschrieben:

| Element | Bedeutung |
| :-: | :-: |
| \\( Z \\) | Endliche, nichtleere Zustandsmenge |
| \\( \Sigma \\) | Eingabealphabet |
| \\( \delta \\) | Übergangsfunktion |
| \\( q_{0} \in Z \\) | Startzustand |
| \\( E \subseteq Z \\) | Menge an Endzuständen |

## Übergangsfunktion

\\[
\begin{equation}
\delta: Z \times A \rightarrow Z'
\end{equation}
\\]

In Worten: Wird in dem aktuellen Zustand \\(Z \\) das Zeichen \\( A \\) gelesen, so geht der Automat
in den nächsten Zustand \\( Z' \\) über.
