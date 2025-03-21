CREATE TABLE Dim_Tag (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE Dim_projeto (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE Dim_status (
    id BIGSERIAL PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL
);

CREATE TABLE Fato_Progresso_user_stories (
    id BIGSERIAL PRIMARY KEY,
    id_tag BIGINT,
    id_projeto BIGINT,
    id_status BIGINT,
    quantidade_user_stories BIGINT,
    FOREIGN KEY (id_tag) REFERENCES Dim_Tag(id),
    FOREIGN KEY (id_projeto) REFERENCES Dim_projeto(id),
    FOREIGN KEY (id_status) REFERENCES Dim_status(id)
);