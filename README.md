# cron

## User

> O campo user define qual usuário irá ser usado para rodar os processos
> dentro do container. O usuário dump já existe dentro do container

```shell
user: "dump"
```

## Build images

```shell
## base
docker build -t dumptec/cron:1.0-base -f Dockerfiles/base/Dockerfile.1.0 ./Dockerfiles/base/

## development
docker build -t dumptec/cron:1.0-dev -f Dockerfiles/dev/Dockerfile.1.0 ./Dockerfiles/dev/
```

## Arquivos de cron

> Você deve substituir o arquivo abaixo com as regras que você gostaria de executar, com o user root
> Dentro do comando o usuario dump deverá ser setado

* /etc/crond./schedule

## Build

Esta imagem exige que o arquivo informado na pasta /etc/cron.d/schedule seja copiado através do build por motivos de permissão
