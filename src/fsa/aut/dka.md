# Deterministischer Kellerautomat (DKA, engl. PDA)

## Formaler Aufbau
Ein PDA wird durch das 7-Tupel \\( K = (Q, \Sigma, \Gamma, \delta, q_{0}, \\#, E) \\)
beschrieben:

| Element | Bedeutung |
| :-: | :-: |
| \\( Z \\) | Zustandsmenge |
| \\( \Sigma \\) | Eingabealphabet |
| \\( \Gamma \\) | Kelleralphabet |
| \\( \delta \\) | Übergangsfunktion |
| \\( q_{0} \in Z \\) | Startzustand |
| \\( \\# \in \Gamma \\) | Anfangssymbol im Keller |
| \\( E \subseteq Q \\) | Menge von Endzuständen |

## Die Übergangsfunktion
Im Folgenden sei \\( \Gamma* \\) die Menge der Wörter die sich mit dem Alphabet \\( \Gamma \\) bilden lassen.

\\[
\begin{equation}
\delta: Z \times (\Sigma \cup \\{\varepsilon\\}) \times \Gamma \rightarrow P(Z \times \Gamma*)\nonumber
\end{equation}
\\]

Die Übergangsfunktion drückt also folgenden Zusammenhang aus: Befindet sich der Automat in Zustand \\( Z \\), so geht er abhängig von einem Zeichen vom Eingabeband und dem obersten Element im Keller über in einen neuen Zustand \\( Z' \\) und legt ein neues Zeichen aus dem Kelleralphabet in den Keller (das auch \\( \varepsilon \\) sein kann).
