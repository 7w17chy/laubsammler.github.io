# Euklidischer Algorithmus

Der Euklidische Algorithmus dient der Berechnung des größten gemeinsamen Teilers zweier Zahlen
\\( a, b\\) (`ggT(a, b)`).
Die Berechnung erfolgt wie folgt, am Beispiel \\( ggT(3, 15) \\):

| n | a | b | q | r |
| :-: |:-: | :-: | :-: | :-: |
| 1 | 66 | 156 | 0 | 66 |
| 2 | 156 | 66 | 2 | 24 |
| 3 | 66 | 24 | 2 | 18 |
| 4 | 24 | 18 | 1 | 6 |
| 5 | 18 | 6 | 3 | 0 |

Für die Durchführung gilt also:
- \\( a_{n+1} = b_{n} \\)
- \\( b_{n+1} = r_{n} \\)
- \\( q_{n} = a_{n} \div b_{n} \\) (Division mit Rest)
- \\( r_{n} = a_{n} \mod b_{n} \\)

Der Algorithmus endet, sobald der Rest \\( r = 0 \\).
Weder der Quotient \\( q \\) noch der Schritt \\( n \\) muss für ein erfolgreiches Durchführen des Algorithmus
notiert werden, erleichtert allerdings die Korrektur.

## Erweiterter Euklidischer Algorithmus
Der erweiterte euklidische Algorithmus dient dem Lösen der diophantischen Gleichung \\( a \cdot x + b \cdot y = z \\). Dafür müssen \\(a, b, z \\) bekannt sein.
Für den erweiterten euklidischen Algorithmus erweitert man die Tabelle um die Spalten \\( x, y \\).
Dafür ist das Durchführen des "normalen" euklidischen Algorithmus notwendig. Die Spalten \\( x, y \\)
werden anschließend von unten nach oben gefüllt.
Es folgt eine Tabelle für die Gleichung \\(216 \cdot x + 125 \cdot y = 1 \\):

| n | a | b | q | r | x | y |
| :-: |:-: | :-: | :-: | :-: | :-: | :-: |
| 1 | 216 | 125 | 1 | 91 | 11 | -19 |
| 2 | 125 | 91 | 1 | 34 | -8 | 11 |
| 3 | 91 | 34 | 2 | 23 | 3 | -8 |
| 4 | 34 | 23 | 1 | 11 | -2 | 3 |
| 5 | 23 | 11 | 2 | 1 | 1 | -2 |
| 6 | 11 | 1 | 11 | 0 | 0 | 1 |

Die Regeln für die Bildung von \\( x, y \\) lauten wie folgt:
- \\( x, y \\) in der letzten Spalte (von oben nach unten) werden mit \\( x = 0, y = z \\) initialisiert
- \\( x_{n} = y_{n+1} \\)
- \\( y_{n} = x_{n+1} - q_{n} \cdot y_{n+1} \\)

