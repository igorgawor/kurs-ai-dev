# Moduł 1 – Jak działa LLM i dlaczego „kłamie"

[← Wróć do spisu treści](index.md)

---

## Czym jest model językowy

Duży model językowy (LLM) to system statystyczny. Został wytrenowany na ogromnym zbiorze tekstów – artykułów, dokumentacji, kodu, forów – i nauczył się przewidywać, jakie słowo powinno pojawić się po poprzednim.

Kluczowa rzecz: model **nie rozumie** tekstu. Nie weryfikuje faktów. Generuje sekwencje tokenów, które są statystycznie spójne z tym, czego się nauczył. Jeśli coś „brzmi jak prawda" w danych treningowych, model to powie – niezależnie od tego, czy to prawda.

---

## Halucynacje – skąd się biorą

Model generuje treści nieprawdziwe z pełną pewnością siebie. Nie ma tu złego zamiaru – model po prostu nie ma narzędzi do odróżnienia faktu od dobrze brzmiącej fikcji.

Typowe przyczyny: temat był słabo reprezentowany w danych treningowych, dane treningowe zawierały błędy, albo pytanie było zbyt szczegółowe – model nie ma odpowiedzi, ale ma wzorzec odpowiedzi i go wypełnia.

Przykład: zapytaj model o domyślny timeout wersji biblioteki wydanej po jego dacie granicznej. Bardzo często poda liczbę – pewnie, szczegółowo, bez zastrzeżeń. 
Żeby zobrazować Wam to na konkretach, w praktyce Copilot potrafi palnąć taką głupotę, że restart produkcyjnego serwera to norma. 
Zaufasz mu w ciemno, wkleisz wygenerowaną konfigurację do terminala, a potem w panice szukasz błędu, bo wszystko leży. 
Traktujcie te podpowiedzi jak rady od znajomego, który zawsze pewnym głosem mówi rzeczy, o których nie ma pojęcia.

---

## Uśrednianie danych

LLM nie cytuje źródeł – syntetyzuje je. Jeśli w danych treningowych część artykułów mówiła, że domyślna wartość parametru to 30 sekund, a część że 60, model może podać obie wartości w różnych kontekstach albo coś pomiędzy.

W dokumentacji technicznej to poważny problem. Liczby, nazwy parametrów, ścieżki plików, flagi CLI – to obszary wysokiego ryzyka.

---

## Brak intencji

Model nie ma zamiaru was okłamywać. Nie ma też zamiaru mówić prawdy. Nie ma żadnych zamiarów. To generator tekstu zoptymalizowany pod kątem spójności, nie prawdziwości.

Praktyczna konsekwencja: im bardziej pewnie brzmi tekst AI, tym ważniejsza jest weryfikacja. Pewność tonu to nie dowód poprawności.

---

[Moduł 2 – Sygnały ostrzegawcze →](modul2.md)
