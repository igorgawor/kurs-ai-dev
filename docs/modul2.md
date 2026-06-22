# Moduł 2 – 4 sygnały ostrzegawcze w tekście generowanym przez AI

[← Moduł 1](modul1.md) | [Moduł 3 →](modul3.md)

Żaden z tych sygnałów sam w sobie nie dowodzi błędu. Każdy powinien uruchomić weryfikację.

---

## Sygnał 1: Nadmierna płynność, zero „kanciastości"

1.  Teksty pisane przez ekspertów mają nierówności – skróty myślowe, subiektywne oceny, zdania urwane w połowie. 
2.  Teksty AI są wygładzone do niepokojącego stopnia. Każdy akapit ma strukturę. 
3.  Brzmi to profesjonalnie, ale naturalny tekst techniczny tak nie wygląda.

    Przykład listy kroków, która nie ma sensu:

> „W celu zapewnienia poprawnego działania systemu należy upewnić się, że wszystkie wymagane zależności zostały zainstalowane zgodnie z dokumentacją producenta."

Żaden doświadczony inżynier nie napisze tak bez podania, jakie konkretnie zależności i skąd. Ogólnikowość połączona z płynnością to sygnał.

---

## Sygnał 2: Konkretne liczby bez kontekstu weryfikacji

Model chętnie podaje liczby, bo brzmią wiarygodnie. Mogą być przestarzałe, uśrednione albo zmyślone.

**Przykład (konfiguracja serwera nginx):**

> „Dla optymalnej wydajności ustaw `worker_processes` na `4` oraz `worker_connections` na `1024`. Wartość `keepalive_timeout` powinna wynosić `65`."

`worker_processes 4` i `worker_connections 1024` to popularne wartości. Ale `keepalive_timeout 65` to domyślna wartość nginx, nie żadna „optymalna". Model skleił prawdziwe dane z bezrefleksyjną rekomendacją – bez sięgnięcia do dokumentacji nginx nie sposób tego odróżnić.

---

## Sygnał 3: Lista kroków, która nie tworzy spójnej procedury

AI dobrze generuje listy. Gorzej z tym, żeby kroki działały jako sekwencja – brakuje kroku pośredniego albo kolejność jest logicznie wadliwa.

**Przykład:**

> 1. Zainstaluj zależności: `npm install`
> 2. Skonfiguruj zmienne środowiskowe w pliku `.env`
> 3. Uruchom migracje: `npm run migrate`
> 4. Utwórz plik `.env` na podstawie `.env.example`

Krok 4 powinien być krokiem 2. Model wiedział, że oba kroki są potrzebne – ale nie uruchamia procedury, tylko ją zapisuje.

---

## Sygnał 4: Odniesienia do zasobów, które mogą nie istnieć

Model nauczył się, że dobra dokumentacja zawiera odsyłacze. Więc je generuje – nawet jeśli zasób nie istnieje.

**Przykład:**

> „Szczegóły znajdziesz w sekcji *Advanced Deployment* pod adresem `docs.example-tool.io/advanced-deployment`."

Adres wygląda wiarygodnie. Sekcja może nie istnieć. Model nie sprawdzał – wygenerował wzorzec „odsyłacz do dokumentacji".

---

[← Moduł 1](modul1.md) | [Moduł 3 – Ćwiczenia →](modul3.md)
