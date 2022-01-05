# Programa Full Cycle de Aceleração: Edição Docker

## Desafio 1

Para obter o resultado do desafio, execute os códigos abaixo:

# comandos finais (rodar em ordem)

## criando uma nova rede para conexao dos containers

```
docker network create fc_dd_net
```

## rodando container do banco de dados mysql

```
docker run --init -it --network fc_dd_net --name fc_dd_mysql jnyjhow/fc_dd_mysql
```