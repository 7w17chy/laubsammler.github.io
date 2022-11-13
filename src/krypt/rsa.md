# Das RSA-Verfahren

## Formelsammlung
### Satz von Fermat
Sei \\( p \\) eine Primzahl:
\\[
\begin{align}
a^{p-1} &= 1 \mod p \quad\vert \cdot a\\\\
a^p &= a \mod p
\end{align}
\\]

### Satz von Euler
Seien \\(p, q \\) Primzahlen, dann gilt:
\\[
\begin{align}
&n = p \cdot q \\\\
&\varphi(n) = (p-1)(q-1)
\end{align}
\\]
und somit:
\\[
\begin{align}
a^{\varphi(n)} &= 1 \mod n \quad\vert \cdot a \\\\
a^{\varphi(n) + 1} &= a \mod n
\end{align}
\\]

## Bestandteile
Die hier aufgeführten Variablennamen decken sich mit denen in der Formelsammlung darüber und werden
auch entsprechend verwendet/berechnet:
- \\( p, q \\): Primzahlen
- \\( n \\): RSA-Modul
- \\( (e, n) \\): öffentlicher Schlüssel, zum Verschlüsseln
- \\( (d, n) \\): privater Schlüssel, zum Entschlüsseln

## Die Idee
\\[
\begin{align}
(x^{e})^{d} &= x \mod n\\\\
\end{align}
\\]


## Zusammenfassung
Folgendes Video von Christian Spannagel gibt einen guten Überblick über die Ausführung,
also Konstruktion eines Schlüsselpaares:

<iframe width="560" height="315" src="https://www.youtube.com/embed/XR6zeI_rNPw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
