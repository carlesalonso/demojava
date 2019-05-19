# Demo bàsica de Java

Exemple de com dockeritzar una aplicació senzilla de Java per consola

El programa Java és el clàssic que se li passa un enter com argument i pinta un triangle amb * amb el número de files corresponent a l'argument.

Descripció del Dockerfile

```
  FROM openjdk:latest
  COPY . /usr/src/myapp
  WORKDIR /usr/src/myapp
  RUN javac Main.java
  ENTRYPOINT [ "java","Main"]
  CMD ["5"]
```


> FROM: Usem com imatge base la darrera de openjdk.
> COPY copiem dins el contenidor a la carpeta on toca tota la carpeta de treball.
> WORKDIR establim com directori de treball per la resta de comandes la carpeta /usr/src/myapp.
> RUN aquí compilem el nostre arxiu java
> ENTRYPOINT serveix per executar java i li passem com argument programa compilat
> CMD establim un argument per defecte, per si no li passem cap

Per provar-ho:

> docker build -t demo-java .
> docker run --rm demo-java

Amb això obtenim el següent resultat:

També li podem passar un argument específic:

> docker run --rm demo-java 8
