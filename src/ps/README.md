# Programmiersprachen

Programmiersprachen kommen in vielen verschieden Variationen, Eigenheiten und
Gemeinsamkeiten. Hier sollen zunächst einige Gemeinsamkeiten aufgeführt und
mit durch das gesamte Kapitel einheitlicher Terminologie beschrieben werden.

## Funktionen
Funktionen sind analog zu den aus der Mathematik bekannten Funktionen: basierend
auf einem (oder mehreren) Eingabewert(en) wird ein Ausgabewert errechnet.
Besonderheiten sind hierbei, zum einen, dass bei mehrfachem Aufrufen der Funktion
mit gleichem Eingabewert nicht unbedingt das gleiche Ergebnis geliefert werden muss
und, im Gegensatz zur Schulmathematik, mehrere Eingabewerte anstatt nur einem üblich 
sind.

## Ausdrücke (engl. "expressions")
Ausdrücke oder Expressions sind sehr eng mit Termen aus der Mathematik verwandt:
Wie diese besitzen auch sie ein errechenbares Ergebnis und folgen bestimmten Regeln 
und Gesetzen (wie z. B. das Distributivgesetz oder "Punkt vor Strich").
Ausdrücke können wie echte mathematische Terme aussehen:

- `6 + 3 * (3 + 4)`
- `3 * 7 + 3`

Wie in mathematischen Termen können Funktionen auch in Ausdrücken auftauchen (denn
sie liefern schliesslich ein Ergebnis und bestehen schlussendlich selbst aus einen Term):

- `6 + f(3)`

## Reichweite (engl. "scope")
Das "scope" oder bzw. die Reichweite legt fest, in welchem Teil eines Programms Variablen
oder Konstanten sichtbar sind. Scopes sind leicht mit Zahlenmengen zu vergleichen/zu 
veranschaulichen: Definieren wir eine *mathematische* Funktion `f`, die natürliche Zahlen 
\\( \mathbb{N} \\) als Eingabewerte erwartet:

\\[
f(x) = y = x + 1; x, y \in \mathbb{N}
\\]

Da wir festgelegt haben, dass `x` und `y` beliebige natürliche Zahlen sein müssen, können 
wir für `x` nicht \\( \pi \\) einsetzen (weil es eine reele Zahl ist), und im Term der Funktion 
auch nicht nutzen, denn das Ergebnis `y` der Funktion ist ebenfalls als natürliche Zahl definiert.
\\( \pi \)) liegt ausserhalb der Reichweite der Reichweite der natürlichen Zahlen.
Hätten wir `x` und `y` als reele Zahlen definiert, so könnten wir sehr wohl auch `2` oder `1`
für `x` einsetzen, denn die natürlichen Zahlen sind eine Teilmenge der reelen Zahlen, liegen also
in deren "Reichweite":

TODO: Grafik mit Zahlenbereiche als Zwiebeldiagramm einfügen

Um das Zwiebeldiagramm in Pseudocode zu übertragen (ein neues, geschachteltes Scope wird in Java mit `{` 
und `}` ein- und ausgeleitet, oder stattdessen mit Einrücken in Python):

```
{
    // 1: natürliche Zahlen
    {
        // 2: reelle Zahlen
        {
            // 3: komplexe Zahlen
        }
    }
}
```

Huch, das ist ja andersrum? Genau! Das "allwissende" Scope/Reichweite ist das am tiefsten Eingerückte bzw. das am meisten Geschachtelte.
Anders als bei der Zahlenmengenanalogie beinhaltet es nicht die anderen Scopes, sondern wird von den anderen beinhaltet. 
Ein Wert der in Scope `1` definiert wurde, ist also auch in Scope `2` und `3` sichtbar, andersherum ist ein Wert der in Scope `3` 
definiert wurde nicht in den Scopes `2` und `3` sichtbar.
Also gilt Folgendes:

```java
{
    int i = 0;
    {
        int j = 0;
        i = 1; // ok!

        {
            j = 5; // ok!
            i = 3; // auch ok!
            int x = 0;
        }

        x = 5; // ERROR! auf das geschachtelte Scope kann nicht zugegriffen werden!
        j = 1; // ok, im gleichen Scope
    }
}

```

## Seiteneffekte
Funktionen müssen nicht (in allen Programmiersprachen) im mathematischen Sinne rein
sein, also bei mehrfachem Aufrufen der gleichen Funktion mit gleichem Eingabewert das
gleiche Ergebnis liefern.
Seiteneffekte können zum Beispiel das ändern von Werten sein (Vorgriff auf Python):

```python
# ist im hauptscope, also in jedem anderen Scope im Programm sichtbar
muhaha_böse = true

def gib_mir_einen_wert():
    if muhaha_böse == true:
        muhaha_böse = false # der Seiteneffekt der Funktion
        return 1
    else:
        muhaha_böse = true # der Seiteneffekt der Funktion
        return 2

wert1 = gib_mir_einen_wert() # wert1 = 1
wert2 = gib_mir_einen_wert() # wert2 = 2
wert3 = gib_mir_einen_wert() # wert3 = 1
# .....
```

Der Seiteneffekt der Funktion ist also die Änderung des Wertes `muhaha_böse`, also von
Zustand (der darüber hinaus im ganzen Programm sichtbar ist).
