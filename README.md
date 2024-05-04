# Cloudflare Terraform CI/CD — Instalacja cf-terraforming

Ten przewodnik pomoże Ci zainstalować narzędzie `cf-terraforming` w systemie Ubuntu, które jest używane do eksportowania konfiguracji Cloudflare do kodu Terraform.

## Krok 1: Pobieranie cf-terraforming

Pobierz najnowszą wersję narzędzia `cf-terraforming` z repozytorium GitHub:

```bash
curl -L https://github.com/cloudflare/cf-terraforming/releases/download/v0.19.0/cf-terraforming_0.19.0_linux_amd64.tar.gz -o cf-terraforming.tar.gz
```

Rozpakuj pobrane archiwum:

```bash
tar -xvf cf-terraforming.tar.gz
```

Przejdź do katalogu z narzędziem:

```bash
cd cmd/cf-terraforming
```

## Krok 2: Instalacja Go

Aby użyć `cf-terraforming`, potrzebujesz języka Go. Zainstaluj Go korzystając z backports, aby mieć najnowszą dostępną wersję:

```bash
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go
```

Sprawdź wersję Go, aby upewnić się, że instalacja przebiegła pomyślnie:

```bash
go version
```

## Krok 3: Kompilacja cf-terraforming

Kompiluj `cf-terraforming` używając Go:

```bash
go build .
```

## Krok 4: Instalacja cf-terraforming

Przenieś skompilowany plik do katalogu systemowego, aby był dostępny globalnie:

```bash
sudo mv ./cf-terraforming /usr/local/bin/
```

Nadaj plikowi prawa do wykonania:

```bash
sudo chmod +x /usr/local/bin/cf-terraforming
```

## Krok 5: Sprawdzenie instalacji

Sprawdź, czy `cf-terraforming` został poprawnie zainstalowany i jest gotowy do użycia:

```bash
cf-terraforming --help
```

Używając powyższych instrukcji, `cf-terraforming` zostanie zainstalowany i skonfigurowany w Twoim systemie Ubuntu, gotowy do eksportowania konfiguracji Cloudflare do Terraform.
