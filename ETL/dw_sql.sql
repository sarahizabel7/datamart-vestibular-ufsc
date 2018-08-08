CREATE TABLE AREA_DIM ( 
sk_area_dim SERIAL PRIMARY KEY,
area TEXT,
id_curso INTEGER,
version INTEGER,
date_from timestamp with time zone,
date_to timestamp with time zone
);


CREATE TABLE TEMPO_DIM (
sk_tempo_dim SERIAL PRIMARY KEY,
id_evento INTEGER,
descricao_evento TEXT,
version INTEGER,
date_from timestamp with time zone,
date_to timestamp with time zone
);

CREATE TABLE CANDIDATO_DIM (
sk_candidato_dim SERIAL PRIMARY KEY,
id_candidato INTEGER,
id_evento INTEGER,
cidade TEXT,
sexo TEXT,
aprovado INTEGER, --1/0
version INTEGER,
date_from timestamp with time zone,
date_to timestamp with time zone
);


CREATE TABLE DESEMPENHO_DIM (
sk_desempenho_dim SERIAL PRIMARY KEY,
id_candidato INTEGER,
id_evento INTEGER,
nota_fisi REAL,
nota_hist REAL,
nota_bio REAL,
nota_mat REAL,
nota_port REAL,
nota_quim REAL,
nota_geo REAL,
nota_lingua_estrangeira REAL,
nota_redacao REAL,
id_opcao1 INTEGER,
id_opcao2 INTEGER,
version INTEGER,
date_from timestamp with time zone,
date_to timestamp with time zone
);

CREATE TABLE CANDIDATO_FATO (
sk_tempo_dim INTEGER,
sk_candidato_dim INTEGER,
sexo TEXT, 
area TEXT,
aprovado INTEGER,
nota_fisi REAL,
nota_hist REAL,
nota_bio REAL,
nota_mat REAL,
nota_port REAL,
nota_quim REAL,
nota_geo REAL,
nota_lingua_estrangeira REAL,
nota_redacao REAL,
FOREIGN KEY(sk_tempo_dim) REFERENCES tempo_dim (sk_tempo_dim),
FOREIGN KEY(sk_candidato_dim) REFERENCES candidato_dim (sk_candidato_dim)
);

CREATE TABLE DESEMPENHO_FATO (
sk_tempo_dim INTEGER,
descricao_evento TEXT,
sexo TEXT, 
nota_media_fisi REAL,
nota_media_hist REAL,
nota_media_bio REAL,
nota_media_mat REAL,
nota_media_port REAL,
nota_media_quim REAL,
nota_media_geo REAL,
nota_media_lingua_estrangeira REAL,
nota_media_redacao REAL,
FOREIGN KEY(sk_tempo_dim) REFERENCES tempo_dim (sk_tempo_dim)
);


CREATE TABLE APROVACOES_FATO (
sk_tempo_dim INTEGER,
descricao_evento TEXT,
area TEXT,
total_homens_aprovados INTEGER,
total_mulheres_aprovadas INTEGER,
total_homens_reprovados INTEGER,
total_mulheres_reprovadas INTEGER,
total_canditatos INTEGER,
total_homens INTEGER,
total_mulheres INTEGER,
FOREIGN KEY(sk_tempo_dim) REFERENCES tempo_dim (sk_tempo_dim)
);


