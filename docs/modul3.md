# Moduł 3 – Ćwiczenia: znajdź błąd

[← Moduł 2](modul2.md) | [← Wróć do spisu treści](index.md)

Poniższe fragmenty zostały wygenerowane przez model językowy i zawierają celowe błędy merytoryczne. Przeczytaj każdy fragment przed spojrzeniem na omówienie.

---

## Ćwiczenie 1

**Kontekst:** Instrukcja wdrożenia aplikacji Flask.

---

> **Uruchomienie środowiska**
>
> Utwórz wirtualne środowisko i zainstaluj zależności:
>
> ```bash
> python -m venv .venv
> source .venv/bin/activate
> pip install -r requirements.txt
> ```
>
> Następnie uruchom serwer:
>
> ```bash
> flask run --host=0.0.0.0 --port=8080
> ```
>
> Wbudowany serwer deweloperski Flask jest wystarczający do obsługi produkcyjnego ruchu przy niewielkiej liczbie równoczesnych użytkowników (do ~50 sesji). Przy większym obciążeniu rozważ Gunicorn.

---

**Omówienie:**

Ostatni akapit zawiera błąd. Serwer `flask run` jest jednowątkowy i jednoprocesowy – dokumentacja Flask wprost ostrzega, żeby **nie używać go w środowisku produkcyjnym w ogóle**, niezależnie od liczby użytkowników. Liczba „~50 sesji" jest zmyślona. Model zna ostrzeżenie o Gunicorn, ale je złagodził – tworząc fałszywe wrażenie, że przy małym ruchu serwer deweloperski jest bezpiecznym wyborem.

---

**Komentarz prowadzącego:**

Tutaj AI poleciało w kulki. Serwer `flask run` to zabawka do developmentu – Flask sam krzyczy w dokumentacji, żeby nie używać go na produkcji, bo jest jednowątkowy. A ta magiczna liczba „~50 sesji”? Kompletnie z kapelusza. Model widział, że gdzieś wspomina się o Gunicornie, więc próbował zgrabnie połączyć fakty, ale wyszedł mu kit. Jeśli widzisz w dokumentacji „bezpieczny do X użytkowników” bez żadnego źródła – to czerwona lampka.

---

## Ćwiczenie 2

**Kontekst:** Dokumentacja uwierzytelniania w REST API.

---

> **Uwierzytelnianie żądań**
>
> API używa tokenów JWT. Token należy dołączyć do każdego żądania:
>
> ```
> Authorization: Bearer <token>
> ```
>
> Tokeny JWT są bezpieczne, ponieważ są szyfrowane po stronie serwera i nie mogą zostać odczytane przez klienta. Jeśli token zostanie przechwycony, atakujący nie będzie w stanie odczytać jego zawartości ani go użyć do autoryzacji.

---

**Omówienie:**

Dwa błędy. Po pierwsze: JWT **nie są szyfrowane** – są podpisane (Base64 + podpis). Payload tokenu można odkodować bez klucza w kilka sekund, np. na jwt.io. Dane w tokenie są widoczne dla każdego, kto go przechwyci. Po drugie: przechwycony token jest jak najbardziej użyteczny dla atakującego – jest ważny do wygaśnięcia i można go użyć do autoryzacji żądań. To błąd z poważnymi konsekwencjami dla bezpieczeństwa.

---

**Komentarz prowadzącego:**

Ten fragment to petarda – błąd bezpieczeństwa gotowy. JWT nie jest szyfrowany, tylko podpisany. Payload to Base64, który dekoduje się online w 3 sekundy. A token przechwycony? Działa jak żywy – atakujący użyje go, dopóki nie wygaśnie. AI napisało to tak gładko, że aż strach. Morał: jak widzisz zdanie „X jest bezpieczne, ponieważ…”, odpal mózg i dokumentację, nie wiarę w AI.

---

[← Moduł 2](modul2.md) | [← Wróć do spisu treści](index.md)
