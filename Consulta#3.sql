--Por año el número de ingresos, salidas correctas y escapes que se dan.
select
extract(year from fecha_ingreso) as año,
sum (cantidad_ingresos) as total_ingresos,
sum (cantidadsalidas_correctas) as total_salidas_correctas,
sum (cantidadsalidas_incorrectas) as total_salidas_incorrectas
from ingreso
join paciente on ingreso.id_paciente=paciente.id_paciente
where extract(year from fecha_ingreso) >= '2020' and extract(year from fecha_ingreso) <= '2021'
group by extract(year from fecha_ingreso);