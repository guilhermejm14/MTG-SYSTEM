Create Table Usuários (
Id_Usuários INT PRIMARY KEY IDENTITY,
Nome NVARCHAR(50) NOT NULL,
Login NVARCHAR(50) NOT NULL,
Senha NVARCHAR(50) NOT NULL,
Perfil NVARCHAR(50) NOT NULL
);
GO


INSERT INTO Usuários ( Nome, Login, Senha, Perfil)
VALUES ( 'Felipe', 'FelipeB', '436224', 'admin'),
('Profs', 'Prof', '123456', 'tester'),
( 'All', 'Alunos', '0101', 'visualizador');
go


SELECT * FROM Usuários
go


delete from Usuários
where Id_Usuários IN (1,2,5,6,7);
go


TRUNCATE TABLE Usuarios;
go

DROP TABLE Usuários;
go