use master
go

drop database Dados
go

create database Dados
go

use Dados
go

create table Tabela(
	String varchar(255)
)
go

declare @DataInicialInsert datetime
declare @DataFinalInsert datetime
declare @DataInicialSelect datetime
declare @DataFinalSelect datetime

set @DataInicialInsert = (select getdate())

DECLARE @counter SMALLINT
SET @counter = 1
WHILE @counter <= 1000000
   BEGIN
	  insert into Tabela(String)
      SELECT char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand())) +
	  char(convert(int, 32 + 94*rand()))
      SET @counter = @counter + 1
   END;

set @DataFinalInsert = (select getdate())

set @DataInicialSelect = (select getdate())

select * from Tabela

set @DataFinalSelect = (select getdate())

select DATEDIFF(MILLISECOND, @DataInicialInsert, @DataFinalInsert)

select DATEDIFF(MILLISECOND, @DataInicialSelect, @DataFinalSelect)

-- select DATEDIFF(MILLISECOND, @DataInicial, @DataFinal)