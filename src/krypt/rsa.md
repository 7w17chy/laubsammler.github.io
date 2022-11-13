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
Zweifaches Potenzieren soll die Lösung sein: Zum Verschlüsseln mit \\(e \\), zum Entschlüsseln mit \\( d \\):
\\[
\begin{align}
(x^{e})^{d} &= x \mod n\\\\
x^{e * d} &= x \mod n \\\\
\end{align}
\\]

## Die Umsetzung und Berechnen eines Schlüsselpaares
Die oben geg. Idee erfordert ein "Aufteilen" des Satzes von Euler in zwei Einzelschritte, wobei
\\( K \\) als Proportionalitätsfaktor dient:
\\[
\begin{align}
x^{\varphi(n) + 1} &= x \mod n \\\\
x^{K * \varphi(n) + 1} &= x \mod n
\end{align}
\\]
Um unsere Schlüssel zu erhalten, müssen wir also die Potenz \\( K \cdot \varphi(n) + 1 \\) Faktorisieren:
\\[
e \cdot d = K \cdot \varphi(n) + 1
\\]
E kann frei gewählt werden, wobei gelten sollte, dass e eine Primzahl ist und \\( ggT(e, \varphi(n)) = 1 \\) und \\( e \ne d \\). \\( d \\) ergibt sich nun aus der Vorraussetzung \\( ggT(e, \varphi(n)) = 1 \\), lässt
sich also mit Hilfe des `erweiterten Euklid'schen Algorithmus` berechnen.

## Zusammenfassung
Folgendes Video von Christian Spannagel gibt einen guten Überblick über die Ausführung,
also Konstruktion eines Schlüsselpaares:

<iframe width="560" height="315" src="https://www.youtube.com/embed/XR6zeI_rNPw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
