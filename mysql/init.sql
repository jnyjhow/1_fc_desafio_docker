/* CREATE DATABASE desafio_docker; */
CREATE DATABASE desafio_docker CHARACTER SET utf8 COLLATE utf8_unicode_ci;
/*CREATE DATABASE desafio_docker CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci; */

use desafio_docker;

/* SET CHARACTER SET utf8; */
/* ALTER DATABASE desafio_docker DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;  */

/*criando banco de dados*/
CREATE TABLE full_cycle (
  id INT NOT NULL AUTO_INCREMENT,
  nome_modulo VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

/*alterando banco de dados para utf8*/
/* ALTER TABLE full_cycle DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;  */

/*inserindo dados*/
INSERT INTO full_cycle(nome_modulo) values ('Docker');
INSERT INTO full_cycle(nome_modulo) values ('Service Mesh com Istio');
INSERT INTO full_cycle(nome_modulo) values ('Observabilidade');
INSERT INTO full_cycle(nome_modulo) values ('Kubernetes');
INSERT INTO full_cycle(nome_modulo) values ('Terraform');
INSERT INTO full_cycle(nome_modulo) values ('Ansible');
