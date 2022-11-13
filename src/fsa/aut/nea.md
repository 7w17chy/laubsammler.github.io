# Nichtdeterministischer endlicher Automat (NEA)[^hsflensburg]

Im Gegensatz zum DEA ist bei einem geg. Eingabezeichen die Fortsetzung der Ausführung nicht eindeutig (d. h., es ist nicht klar, welcher Übergang gewählt werden soll):

![Nichtdeterministischer endlicher Automat](nea.grafik.png)

Aus dem Nichtderterminismus folgt:
- Ein NEA kann in mehreren Zuständen zugleich sein
- Es kann mehrere Start- und Endzustände geben
- Eine eindeutige Definition der Übergangsfunktion ist nicht möglich

## Formaler Aufbau
Ein NEA ist ebenfalls ein 5-Tupel \\( N = (Z, \Sigma, \delta, q_{0}, E) \\), dessen
Elemente wie folgt definiert sind:

| Element | Bedeutung |
| :-: | :-: |
| \\( Z ) | Endliche, nichtleere Zustandsmenge |
| \\( \Sigma \\) | Eingabealphabet |
| \\( \delta \\) | Übergangsfunktion |
| \\( q_{0} \in Z \\) | Startzustand |
| \\( E \subseteq Z \\) | Menge an Endzuständen |
