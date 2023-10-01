BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"user"	TEXT NOT NULL UNIQUE,
	"password"	TEXT NOT NULL,
	"access"	TEXT NOT NULL,
	"email"	TEXT NOT NULL,
	"tel"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "livros" (
	"id_livro"	INTEGER NOT NULL,
	"nome_livro"	TEXT NOT NULL,
	"genero_livro"	TEXT NOT NULL,
	"quantidade_livro"	TEXT NOT NULL,
	"autor_livro"	TEXT NOT NULL,
	"descricao_livro"	TEXT NOT NULL,
	"status_livro"	TEXT NOT NULL,
	PRIMARY KEY("id_livro" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "locacao" (
	"id_livro_lo"	INTEGER NOT NULL,
	"nome_livro_lo"	TEXT NOT NULL,
	"quantidade_livro_lo"	TEXT NOT NULL,
	"data_locacao_lo"	DATE NOT NULL,
	"data_prevista_devolucao_lo"	DATE NOT NULL,
	"data_devolucao_lo"	DATE NOT NULL,
	"usuario_lo"	TEXT NOT NULL,
	"status_livro_lo"	TEXT NOT NULL,
	PRIMARY KEY("id_livro_lo" AUTOINCREMENT)
);
INSERT INTO "users" ("id","name","user","password","access","email","tel") VALUES (1,'teste','teste','123','Administrador','testebemfeito@gmail','22999999125'),
 (4,'Novo','Novo','123','Usuário','novo@novo.com.br','9999999999'),
 (12,'Adimilson','Adimilson','123','Administrador','adimilsonimop@gmail.com','22997506821'),
 (13,'Administrador','Administrador','123','Administrador','administrador@gmail.com','22-123456789'),
 (14,'Usuário','Usuário','123','Usuário','usuario@gmail.com','22-123456789');
INSERT INTO "livros" ("id_livro","nome_livro","genero_livro","quantidade_livro","autor_livro","descricao_livro","status_livro") VALUES (25,'The Hobitt','Fantasia','1','J.R.R. Tolkien','História de fantasia da Terra Média','Disponível'),
 (26,'Bíblia Sagrada','Religião','1','Igreja','Livro Sagrado do Cristianismo','Disponível'),
 (27,'Os sete maridos de Evelyn Hugo','Romance','','Taylor Jenkins Reid','Com todo esplendor quesó a Hollywood do século passado pode oferecer, esta é uma narrativa inesquecível sobre os sacrifícios que fazemos por amor, o perigo dos segredos e o preço da fama.','Disponível'),
 (28,'1984','Ficção Científica','1','George Orwell','Sátira política ambientada em uma distopia futurista.','Disponível'),
 (29,'Flores para Algernon','Ficção científica','1','Daniel Keyes','Pertubador e profundo, debate visõesde mundo, relação interpessoais, e a percepção de nós mesmo.','Disponível'),
 (30,'Vermelho, Branco e Sangue Azul','Romance','1','Casey McQuiston','Um romance entre a Casa Branca e o Palácio de Buckngham','Disponível'),
 (31,'O duque e eu','Romance de época','1','Julia Quinn','O livro que inspirou a série os Bridgerton','Disponível'),
 (32,'Valentine ','Romance erótico','1','Mari Sales','Tríade Moto Clube - Livro 1','Disponível'),
 (33,'Que seja doce','Romance','1','Sara Fidélis','O livra trata de temas como luto, superação e segunda chances.','Disponível'),
 (34,'Dom Casmurro','Clássico da literatura brasileira','1','Machado de Assis','Triângulo amoroso entre Bentinho, Capitu e Escobar. Capitu traiu Bentinho?','Disponível'),
 (35,'Bom dia todas as cores','Infantil','1','Ruth Rocha','O Camaleão queria a todos agradar, mas será queisso é possível?☻','Disponível');
INSERT INTO "locacao" ("id_livro_lo","nome_livro_lo","quantidade_livro_lo","data_locacao_lo","data_prevista_devolucao_lo","data_devolucao_lo","usuario_lo","status_livro_lo") VALUES (1,'teste2','1','23/09/23','22/11/23','23/09/23','teste','Disponível'),
 (2,'Ver esse','1','99/99/9999','99/99/9999','99/99/9999','sistema','Disponível'),
 (3,'Ver tbm','1','23/09/23','22/11/23','23/09/23','teste','Disponível'),
 (4,'ver','1','23/09/23','22/11/23','23/09/23','teste','Disponível'),
 (5,'Novo','1','23/09/23','22/11/23','23/09/23','teste','Disponível'),
 (6,'Este','1','01/10/23','30/11/23','01/10/23','teste','Disponível'),
 (7,'The Hobitt','1','99/99/9999','99/99/9999','99/99/9999','sistema','Disponível'),
 (8,'Bíblia Sagrada','1','99/99/9999','99/99/9999','99/99/9999','sistema','Disponível'),
 (9,'Os sete maridos de Evelyn Hugo','','99/99/9999','99/99/9999','99/99/9999','sistema','Disponível'),
 (10,'1984','1','99/99/9999','99/99/9999','99/99/9999','sistema','Disponível'),
 (11,'Flores para Algernon','1','99/99/9999','99/99/9999','99/99/9999','sistema','Disponível'),
 (12,'Vermelho, Branco e Sangue Azul','1','99/99/9999','99/99/9999','99/99/9999','sistema','Disponível'),
 (13,'O duque e eu','1','99/99/9999','99/99/9999','99/99/9999','sistema','Disponível'),
 (14,'Valentine ','1','01/10/23','30/11/23','01/10/23','teste','Disponível'),
 (15,'Que seja doce','1','01/10/23','30/11/23','01/10/23','teste','Disponível'),
 (16,'Dom Casmurro','1','01/10/23','30/11/23','01/10/23','teste','Disponível'),
 (17,'Bom dia todas as cores','1','01/10/23','30/11/23','01/10/23','teste','Disponível');
COMMIT;
