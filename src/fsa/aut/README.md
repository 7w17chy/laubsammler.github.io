# Automaten

Man unterscheidet in verschiedene Automatentypen[^robrecht]:

## Akzeptor
- Entscheidet ob ein jeweiliges geg. Eingabewort in einer ebenfalls geg. Sprache \\(L \\) enthalten ist,
gibt also einen booleschen Wert zurück
- Das Wort ist akzeptiert (also enthalten), wenn der aktuelle Zustand bei
Erreichen des Endes des Eingabewortes ein Endzustand ist
- Der Automat endet *nicht* sobald ein Endzustand erreicht ist, sondern nur, wenn auch das Eingabewort zuende ist

## Transduktor
- Bei einem jeweiligen Zustandsübergang erfolgt auch eine Ausgabe (z. B. Veränderung des Eingabebands)
- Die Ausgabe erfolgt nicht als boolescher Wert am Ende der Ausführung, sondern bereits währenddessen

[^robrecht]: [Merkblatt Informatik-Leistungskurs](https://patrick-robrecht.de/downloads/merkblatt-informatik-leistungskurs.pdf)
