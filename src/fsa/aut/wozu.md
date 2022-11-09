# Wozu Automaten?

Betrachten wir also nun eine Grammatik, die Dezimalzahlen beschreibt:

\\[
\begin{array}{l}
\begin{equation}
G = (N, T, P, S)\\\\
\\\\
N = \\{0, 1, 2, \dots, 9, ','\\}\\\\
T = \\{\varepsilon\\}\\\\
P = \\{X \rightarrow (A,A)\vert\varepsilon, A \rightarrow 0\vert1\vert2\vert\dots\vert9\vert\varepsilon\\}\\\\
S = X\nonumber
\end{equation}
\end{array}
\\]

Das Eingabealphabet eines möglichen Automaten, der nach dieser Grammatik \\( G \\) modelliert ist, besäße ein
Eingabealphabet, das den Nichtterminalsymbolen \\( N \\) der Grammatik \\( G \\) entspräche, also:

\\[
\begin{equation}
\Sigma = N = \\{0, 1, 2, \dots, 9, ','\\}\nonumber
\end{equation}
\\]

Daraus lassen sich dann verschiedene Wörter für die Eingabe des Automaten formen, zum Beispiel:

\\[
\begin{equation}
\begin{array}{l}
E = \\{,,,,; 023;3244,23; 23,32; 234,,,,234 \\}
\end{array}
\end{equation}
\\]

Unsere Sprache soll allerdings *valide* Dezimalzahlen beschreiben, und mit der Grammatik
lassen sich auch solche erzeugen -- wie jedoch prüfen wir, ob ein bereits bestehendes
Wort (das sich nur aus Zeichen aus \\( \Sigma \\) bzw. \\( N \\) zusammensetzt) ebenfalls Teil der
Sprache ist? Natürlich könnten wir versuchen mit den Produktionen \\( P \\) der Grammatik das
Wort nachzubilden, allerdings wäre dieser Prozess sehr aufwändig und
fehlerbehaftet. Hier kommen nun die Automaten ins Spiel: Mit einem Automaten, der
entsprechend der Grammatik \\( G \\) modelliert ist, können wir diesen "Nachbildeprozess"
umkehren und automatisieren. Anstatt also das Wort mittels \\( P \\) nachzubauen, zersetzen wir
es anhand der *Semantik* der Produktionen aus \\( P \\).
