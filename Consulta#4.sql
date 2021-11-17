--Cuarta Consulta
select
cast(patologia.tipo_patologia as varchar(50)) as patologia,
count(patologia.tipo_patologia) as cantidad
from paciente
inner join patologia on paciente.id_paciente = patologia.id_paciente
group by patologia;