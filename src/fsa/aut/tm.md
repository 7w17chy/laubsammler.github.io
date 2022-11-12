# Turingmaschine

## Formaler Aufbau
Das theoretische Modell einer Turingmaschine besteht aus einem 7-Tupel
\\( M = (Z, \Sigma, \Gamma, \delta, z_{0}, \square, E) \\):

| Element | Bedeutung |
| :-: | :-:|
| \\( Z \\) | endliche Zustandsmenge |
| \\( \Sigma \\) | Eingabealphabet |
| \\( \Gamma \supset \Sigma \\) | Arbeitsalphabet |
| \\( \delta \\) | Übergangsfunktion(en) |
| \\( z_{0} \in Z \\) | Startzustand |
| \\( \square \in \Gamma, Z \\) | Leerzeichen |
| \\( E \subseteq Z \\) | endliche Endzustandsmenge |

## Die Übergangsfunktion
Die Übergangsfunktion \\( \delta \\) ist wie folgt definiert:

\\[
\begin{equation}
\delta: Z \times \Gamma \rightarrow Z' \times \Gamma' \times \\{l, r, n\\}.\nonumber
\end{equation}
\\]

Ihre Parameter sind sind ein Zustand \\( Z \\), also der Zustand, in dem sich die Maschine
momentan befindet und ein Zeichen des Arbeitsalphabets \\( \Gamma \\), das von einem
Eingabeband gelesen wird. Die Maschine geht dann, basierend bzw. abhängig von den Werten
der Parameter in einen neuen Zustand \\( Z' \\) über und schreibt an die Stelle des Zeichens
\\( \Gamma \\) das neue Zeichen \\( \Gamma' \\). Des weiteren wird der Lese-Schreibe-Kopf der Maschine
bewegt oder verbleibt in Ruhelage (\\( \{l=links, r=rechts, n=Stillstand\} \\)).  Dabei sei
nicht ausgeschlossen, dass \\( Z = Z' \\) und/oder \\( \Gamma = \Gamma' \\).
