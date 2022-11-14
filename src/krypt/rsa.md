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

## RSA-Cookbook[^schluesselkonstruktion]
1. Wähle zwei Primzahlen \\( p, q \\).
2. Bilde das RSA-Modul \\( n \\) mit \\( n = p \cdot q \\).
3. Bestimme \\( \varphi(n) \\) mit \\( \varphi(n) = (p - 1) \cdot (q - 1) \\).
4. Wähle \\( e \\) unter Berücksichtigung folgender Bedingungen:
    - \\( 1 < e < \varphi(n) \\)
    - \\( ggT(e, \varphi(n)) = 1 \\)
5. Der öffentliche Schlüssel ist: \\( (e, n) \\).
6. \\( d \\) ist die Lösung folgender Gleichung:
\\[
\begin{align}
e \cdot d &\equiv 1 \mod \varphi(n) \\\\
\Leftrightarrow \dots \\\\
\Leftrightarrow e \cdot d + K \cdot \varphi(n) &= 1
\end{align}
\\]
Die Lösung kann mit dem `erweiterten Euklid'schen Algorithmus` erzielt werden.
7. Der private Schlüssel lautet: \\( (d, n) )\\.
8. Verschlüsseln mit:
\\[
x^{e} = x' \mod n
\\]
9. Entschlüsseln mit:
\\[
x'^{d} = x \mod n
\\]

## Laufzeitkomplexität

## Warum ist das jetzt sicher?
- \\( p, q, e \\) werden möglichst groß gewählt, sodass ein Knacken aufgrund der Natur der Primfaktorzerlegung
nur in nicht-annehmbarer Zeit vollzogen werden könnte
- Es werden nicht etwa einzelne Buchstaben oder Sätze verschlüsselt, sondern ganze Texte als
eine große Zahl interpretiert, die dann verschlüsselt werden

## Zusammenfassung
Folgendes Video von Christian Spannagel gibt einen guten Überblick über die Ausführung,
also Konstruktion eines Schlüsselpaares:

<iframe width="560" height="315" src="https://www.youtube.com/embed/XR6zeI_rNPw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

[^schluesselkonstruktion]: [Video](https://www.youtube.com/watch?v=oXlY-yx1oIw) von Christian Spannagel, das die Konstruktion der RSA-Schlüssel demonstriert und auch weitere Infos über RSA liefert
