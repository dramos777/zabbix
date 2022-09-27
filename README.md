# What is Zabbix?

Zabbix is an enterprise-class open source distributed monitoring solution.

*Zabbix is software that monitors numerous parameters of a network and the health and integrity of servers. Zabbix uses a flexible notification mechanism that allows users to configure e-mail based alerts for virtually any event. This allows a fast reaction to server problems. Zabbix offers excellent reporting and data visualisation features based on the stored data. This makes Zabbix ideal for capacity planning.*

source: https://www.zabbix.com/ and https://github.com/zabbix/zabbix-docker

## Resumo
Integração do zabbix com grafana utilizando os arquivos de configuração e imagens oficiais. As variáveis, credenciais e volumes utilizados são os mesmos do site oficial do zabbix/grafana

## Dependências
- GNU Linux com Docker instalado
Para instalar o docker e inicicar o swarm:
```
curl -fsSL https://get.docker.com | bash
docker --version
docker swarm init
```

## Testado em:

- GNU/Linux Debian 11 com Docker 20.10.5+dfsg1 (swarm)
- GNU/Linux Debian 11 com Docker 20.10.17 (swarm)

## Como usar

Baixar o projeto, criar a estrutura de diretórios e os certificados
```
git clone https://github.com/dramos777/zabbix-docker.git
cd zabbix-docker
./volumes-create.sh
./cert-create.sh
```
Deploy
```
docker stack deploy -c docker-compose.yaml zabbix
```
### Integração com o grafana
- Acessar a interface do grafana em http://ipdoservidor:3000
- Clicar nas opções de configurações (engrenagem)
- Clicar na aba plugins
- Clicar no plugin Zabbix by Alexander Zobnin
- Ativar o plugin (Enable)
- Clicar em dicionar um novo Data Source e selecionar Zabbix

### Data Source Zabbix
Configurações HTTP
- URL
```
http://zabbix-web-nginx-mysql:8080/api_jsonrpc.php
```
- Access
```
Server (default)
```
Configurações Zabbix API details
- Username
```
zabbix
```
- Password
```
zabbix
```
**Save & test**
**OBS**.: Altere as credenciais

## Histórico

v1.0 27/09/2022, Emanuel Dramos:

- Criação do README.md
- Criação do docker-compose.yaml
- Push do projeto para o github
- Deploy da aplicação e teste de conexão com o banco de dados
- Integração zabbix e grafana

## Autor e mantenedor

Emanuel Dramos

- **Github:** https://github.com/dramos777

