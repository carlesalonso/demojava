FROM openjdk:latest
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN javac Main.java
ENTRYPOINT [ "java","Main"]
CMD ["5"]