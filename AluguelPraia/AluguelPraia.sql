CREATE TABLE Cliente(
idCliente INT PRIMARY KEY AUTO_INCREMENT,
nomeCliente VARCHAR(50) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE
);
 
CREATE TABLE Funcionario (
idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
nomeFuncionario VARCHAR(50) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
celular CHAR(11) NOT NULL
);
 
CREATE TABLE Equipamento (
idEquipamento INT PRIMARY KEY AUTO_INCREMENT,
nomeEquipamento VARCHAR(50) NOT NULL UNIQUE,
qtd INT NOT NULL,
valorHora DECIMAL(5,2) NOT NULL 
);
 
CREATE TABLE Aluguel (
idAluguel INT PRIMARY KEY AUTO_INCREMENT,
idCliente INT NOT NULL,
idFuncionario INT NOT NULL,
dataHoraRetirada DATETIME NOT NULL,
dataHoraDevolucao DATETIME,
valorAPagar DECIMAL(10,2),
valorPago DECIMAL(10,2),
pago BIT,
formapagamento VARCHAR(50),
qtVezes INT,
FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);
 
CREATE TABLE AluguelEquipamento(
idAluguelEquipamento INT PRIMARY KEY AUTO_INCREMENT,
idEquipamento INT NOT NULL,
idAluguel INT NOT NULL,
valorItem DECIMAL(10,2) NOT NULL,
valorUnitario DECIMAL(10,2) NOT NULL,
qtd INT,
FOREIGN KEY (idEquipamento) REFERENCES equipamento(idEquipamento),
FOREIGN KEY (idAluguel) REFERENCES aluguel(idAluguel)
);