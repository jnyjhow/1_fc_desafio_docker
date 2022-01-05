CREATE DATABASE desafio_docker;

use desafio_docker;

/*criando banco de dados*/
CREATE TABLE full_cycle (
  id INT NOT NULL AUTO_INCREMENT,
  nome_modulo VARCHAR(255) NOT NULL,
  PRIMARY KEY (id));

/*inserindo dados*/
INSERT INTO full_cycle(nome_modulo) values ('Docker');
INSERT INTO full_cycle(nome_modulo) values ('Padrões e técnicas avançadas com Git e Github');
INSERT INTO full_cycle(nome_modulo) values ('Integração contínua');
INSERT INTO full_cycle(nome_modulo) values ('Kubernetes');