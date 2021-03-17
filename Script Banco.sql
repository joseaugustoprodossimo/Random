/*
	Script banco

	drop table Tabela

	create table Tabela(
		String varchar(256)
	)
	
	insert into Tabela values (@String)
*/

declare @DataInicial datetime
declare @DataFinal datetime

set @DataInicial = (select getdate())

select * from Tabela

set @DataFinal = (select getdate())

select DATEDIFF(MILLISECOND, @DataInicial, @DataFinal)

/*
	1 segundo corrresponde a mil milisegundos
	47366 = 47 segundos e 366 milisegundos
	47366 / 1000 = 47.366

	48140
	67223
*/