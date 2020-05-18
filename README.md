# HarjoitusRF
Ohjelmistokehityksen tekniikat -kurssin harjoitustyö

## Harjoitustyöstä:
Ohjelmistokehityksen tekniikkakurssin loppuharjoituksessa tutustuin Robot Frameworkin käyttöön.
Harjoituksessa testataan Haaga-Helian kirjastopalveluiden hakua, jossa lopputuloksessa robotti etsii hakusanalla Robot Framework tietoa hakemistosta.
Tulokset rajataan valitsemalla opinnäytetyöt. Tämän jälkeen robotti tallentaa lähdetiedot erilliselle tiedostolle sekä avaa opinnäytetyön erilliselle selaimelle. 
Kokeilu tulosta voisi kuvata myös regressiotestaukseksi, mutta projektin tarkoituksena oli tutustua RF:n avainsanojen käyttöön.

## Työssä käytetty tekniikka:
- [Robot Framework](http://robotframework.org/robotframework/#user-guide)

## Työn aloitus:
Robot Frameworkin asennuksessa vaaditaan:
+Python,
+pip asennusohjelma sekä
+valitun selaimesta riippuen joko geckodriver.exe(Firefoxin webdriver) tai chromedriver (Chrome webriver).

Tämän jälkeen voit lisätä Robot Frameworkin:
```python
pip install robotframework
```
sekä selainpohjaisten sovelluksien automatiosoinnissa käytettävä SeleniumLibrary
```python
pip install robotframework-seleniumlibrary
```

Tämän jälkeen voit ajaa testin komentorivillä robot komennolla. Esimerkiksi tässä tapauksessa
```python
robot sivusto.robot
```
