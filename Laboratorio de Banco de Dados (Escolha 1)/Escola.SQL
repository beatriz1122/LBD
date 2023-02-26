CREATE DATABASE Escola
GO
CREATE TABLE Aluno (
RA		INT				NOT NULL,
Nome					VARCHAR(100)	NOT NULL,
numero					INT			NOT NULL
PRIMARY KEY (RA)
)
GO
CREATE TABLE Disciplina (
Codigo		INT				NOT NULL,
Nome					VARCHAR(80)	NOT NULL,
Carga_Horaria					INT			NOT NULL
PRIMARY KEY (Codigo)
)
GO
CREATE TABLE Curso (
Codigo					INT				NOT NULL,
Nome					VARCHAR(100)	NOT NULL,
Area					INT		NOT NULL
PRIMARY KEY (Codigo)
)
GO
CREATE TABLE Titulacao (
Codigo					INT				NOT NULL,
Titulo					VARCHAR(40)	NOT NULL
PRIMARY KEY (Codigo)
)
GO
CREATE TABLE Professor (
Registro					INT				NOT NULL,
Nome						VARCHAR(100)	NOT NULL,
titulacao					INT			NOT NULL
PRIMARY KEY (Registro)
FOREIGN KEY (titulacao) references Titulacao(Codigo)
)
GO
CREATE TABLE Aluno_Disciplina (
Aluno_RA							INT				NOT NULL,
DisciplinaCodigo					INT				NOT NULL
PRIMARY KEY (Aluno_RA,DisciplinaCodigo)
FOREIGN KEY (Aluno_RA) references Aluno(RA),
FOREIGN KEY (DisciplinaCodigo) references Disciplina(Codigo)
)
GO
CREATE TABLE Curso_Disciplina (
CursoCodigo							INT				NOT NULL,
DisciplinaCodigo					INT				NOT NULL
PRIMARY KEY (CursoCodigo,DisciplinaCodigo)
FOREIGN KEY (CursoCodigo) references Curso(Codigo),
FOREIGN KEY (DisciplinaCodigo) references Disciplina(Codigo)
)
GO
CREATE TABLE Disciplina_Professor (
ProfessorRegistro					INT				NOT NULL,
DisciplinaCodigo					INT				NOT NULL
PRIMARY KEY (ProfessorRegistro,DisciplinaCodigo)
FOREIGN KEY (ProfessorRegistro) references Professor(Registro),
FOREIGN KEY (DisciplinaCodigo) references Disciplina(Codigo)
)
