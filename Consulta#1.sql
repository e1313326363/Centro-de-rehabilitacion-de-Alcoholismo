--Consultar histórico de ingresos que ha tenido cada paciente
select nombre_paciente as Nombre,
apellido_paciente as Apellido,
cantidad_ingresos as CantidadIngreso,
cantidad_servicio as CantidadServicios
from servicio
inner join paciente on servicio.id_paciente=paciente.id_paciente
inner join ingreso on paciente.id_paciente = ingreso.id_paciente