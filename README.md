# DevOps akademija - Web development

**Nogomet aplikacija** tečaja **Web development** v okviru **DevOps akademije**.

**Nogomet App**

Aplikacija Nogomet je namenjena organizaciji in sledenju rekreativnih nogometnih dogodkov. Uporabnikom omogoča ogled in prijavo na različne nogometne prireditve, dodajanje novih dogodkov, ter pregled statistike vseh uporabnikov, ki so se prijavili na določen dogodek.

## Zaslonske maske:

1. **Dogodki (Events):** Ta stran omogoča pregled nogometnih dogodkov in upravljanje z njimi (urejanje, brisanje in dodajanje). Na tej strani najdemo tudi gumb za izvoz vseh podatkov o dogodkih v CSV datoteko.

2. **Prijavljeni (Signups):** Enaka struktura kot pri dogodkih, vendar prikazuje prijave uporabnikov na posamezen dogodek.

3. **Registracija in prijava s standardnim uporabniškim računom:** Strani za registracijo in prijavo uporabnika z uporabo uporabniškega računa v podatkovni bazi.

4. **Urejanje dogodka ali prijave:** Strani za posodabljanje podatkov o obstoječem dogodku ali prijavi. Podatki se samodejno izpolnijo.

5. **Dodaj nov dogodek ali prijavo:** Enako kot urejanje, vendar brez predhodnih podatkov. Uporabnik vnese vse potrebne informacije, nato pa shrani, da ustvari nov dogodek ali prijavo.

## Dostop do produkcije:
- [https://nogomet.onrender.com](https://nogomet.onrender.com)


## Swagger Link: 
- [https://nogomet.onrender.com/api-docs](https://nogomet.onrender.com/api/docs)

Uporabnik - admin:
- Uporabniško ime: Nik Perne
- Elektronski naslov: nik.perne@gmail.com
- Geslo: Oklop123

Uporabnik - navaden:
- Uporabniško ime: test
- Elektronski naslov: test@gmail.com
- Geslo: Oklop123

## PREZENTACIJA:
[Google Predstavitev](https://docs.google.com/presentation/d/1vlyFQ23D49aC4sA6mefUrd_ueeq5vy1UmWnYHGZL0dc/edit?usp=drivesdk)

![Alt text](<test/Posnetek zaslona 2023-11-20 190145.png>)

## Vagrant:

Vagrant postavi testno okolje, kjer se postavi v vagrant box mongodb, nginx in nodejs

Na mongodb se postavi baza demo, ki je dosegljiva preko povezave mongodb://localhost:27017 ali mongodb://127.0.0.1:27017

Nginx naredi hosting aplikacije na ven, tako da je dosegliva za host OS

namesti tudi nginx 18 saj je potrebna ta verzija, da aplikacija lahko deluje (kompatibilnost paketov)

Na koncu se naredi datoteka .env, v katero se zapiše kakšno okolje je, ali je https in jwt secret token

ter naredi npm install za namestitev modulov in npm start za zagon aplikacije

## Cloud-init:

Zelo podobno kot vagrant, vendar se postavi produkcijsko okolje, kjer se poleg okolja, jwt secret, https, nastavi tudi mongodb atlas baza.

Ker se produkcijsko okolje postavi z https se notri v vm kopirajo tudi certifikati za tls (server.cert in server.key)

ostalo ostane enako kot pri vagrant (namesti se mongodb - če želimo poganjati lokalno na virtualki bazo, nginx za hosting aplikacije na ven ter nodejs 18)
