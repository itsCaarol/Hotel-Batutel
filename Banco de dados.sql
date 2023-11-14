CREATE TABLE Hóspedes (
    ID_Hóspede INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20),
    Data_Nascimento DATE,
    Endereço VARCHAR(255)
);
CREATE TABLE Quartos (
    ID_Quarto INT PRIMARY KEY,
    Tipo VARCHAR(50),
    Preço DECIMAL(10, 2),
    Disponível BOOLEAN
);
CREATE TABLE Reservas (
    ID_Reserva INT PRIMARY KEY,
    ID_Hóspede INT,
    ID_Quarto INT,
    Data_Entrada DATE,
    Data_Saída DATE,
    FOREIGN KEY (ID_Hóspede) REFERENCES Hóspedes(ID_Hóspede),
    FOREIGN KEY (ID_Quarto) REFERENCES Quartos(ID_Quarto)
);
CREATE TABLE Serviços_Adicionais (
    ID_Serviço INT PRIMARY KEY,
    Nome VARCHAR(100),
    Preço DECIMAL(10, 2)
);
CREATE TABLE Serviços_Prestados (
    ID_Serviço_Prestado INT PRIMARY KEY,
    ID_Reserva INT,
    ID_Serviço INT,
    Quantidade INT,
    FOREIGN KEY (ID_Reserva) REFERENCES Reservas(ID_Reserva),
    FOREIGN KEY (ID_Serviço) REFERENCES Serviços_Adicionais(ID_Serviço)
);