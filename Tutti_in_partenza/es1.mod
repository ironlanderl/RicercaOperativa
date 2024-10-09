set n := 1..50;  # Interi da 1 a 50 (numero di oggetti)
param b;  # Peso massimo del bagaglio

param W{n};  # Peso degli oggetti
param P{n};  # Valore degli oggetti

var X{n} binary;  # Variabili decisionali: 1 se l'oggetto viene scelto, 0 altrimenti

# Funzione obiettivo: massimizzare il valore complessivo degli oggetti selezionati
maximize z: sum {i in n} P[i] * X[i];

# Vincolo: il peso totale degli oggetti selezionati non deve superare il peso massimo
s.t. Constraint: sum {i in n} W[i] * X[i] <= b;
