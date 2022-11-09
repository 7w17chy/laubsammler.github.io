# Beispiel: Die Sprache `a*b`

Als Beispiel soll eine Sprache \\( L \\) dienen, deren Worte aus beliebig vielen "a" gefolgt von
genau einem "b" bestehen soll, also:

\\[
\begin{equation}
L = \\{ab, aab, aaab, \dots\\}.\nonumber
\end{equation}
\\]

Eine solche Sprache lässt sich mit folgender Grammatik beschreiben:

\\[
\begin{equation}
\begin{array}{l}
G = (N, T, P, S)\\\\
\\\\
N = \\{a, b\\}\\\\
T = \\{\varepsilon\\}\\\\
P = \\{X \rightarrow aAb, A \rightarrow a\vert\varepsilon\\}\\\\
S = X\nonumber
\end{array}
\end{equation}
\\]

Eingabeworte könnten jedoch auch folgende sein:

\\[
\begin{equation}
E = \\{aaab, aaaabbbbbbbb, ba, bbaa, baa\\}\nonumber
\end{equation}
\\]

Mittels eines deterministischen endlichen Automaten, der
nach \\( G \\) modelliert ist, können wir nun die Eingabeworte auf Zugehörigkeit zur Sprache \\( L \\)
prüfen:

TODO: Automatengrafik einfuegen!

In Worten beschrieben:

  1. Solange Zeichen "a" auf dem Eingabeband ist, bleibe in Zustand \\( q_{0} \\).
  2. Wird Zeichen "b" gelesen, wechsle in Zustand \\( q_{1} \\).
  3. Wird noch ein "b" gelesen, wechsle in Zustand \\( q_{müll} \\) (Wort nicht akzeptiert/in Sprache).
  4. Wird ein Leerzeichen gelesen, wechsle stattdessen in Zustand \\( q_{a} \\), das Wort ist in der Sprache/ist akzeptiert.
