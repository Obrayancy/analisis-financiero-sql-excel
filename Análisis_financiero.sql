use EmpresaDB

create table Finanzas (
ID int primary key,
Mes varchar(20),
Ingresos decimal(10,2),
Costos decimal(10,2),
Gastos decimal(10,2))



insert into Finanzas values
(1, 'Enero', 10000, 4000, 2000),
(2, 'Febrero', 12000, 5000, 2500),
(3, 'Marzo', 9000, 3000, 2000),
(4, 'Abril', 15000, 7000, 3000)

-- Utilidad por mes
select
Mes, Ingresos, Costos, Gastos, (Ingresos - Costos - Gastos) as utilidad from Finanzas


-- Mes con mayor utilidad
select
Mes, (Ingresos - Costos - Gastos) as Utilidad, cast((Ingresos - Costos - Gastos) * 100.0 / Ingresos as decimal(10,2)) as MargenPorcentaje from Finanzas

