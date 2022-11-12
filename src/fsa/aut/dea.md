# Deterministischer endlicher Automat (DEA)

- gehört zur Kategorie der Akzeptoren
- zu Englisch: "deterministic finite automaton"
- Deterministisch: Bei gleichen Eingabewerten erfolgt stets die gleiche Ausgabe/das gleiche Ergebnis
- besteht zu jeder Zeit in der Ausführung nur eine Fortsetzungsmöglichkeit dieser
- Befindet sich stets in genau einem Zustand

## Formaler Aufbau

Der DEA wird durch ein 5-Tupel \\( D = (Z, \Sigma, \delta, q_{0}, E) \\) beschrieben:

| Element | Bedeutung |
| :-: | :-: |
| \\( Z \\) | Endliche Zustandsmenge |
| \\( \Sigma \\) | Eingabealphabet |
| \\( \delta \\) | Übergangsfunktion |
| \\( q_{0} \in Z \\) | Startzustand |
| \\( E \subseteq Z \\) | Menge an Endzuständen |
