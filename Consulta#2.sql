--Consultar el histórico de atenciones por personal que existe en la institución.
select nombre_profesional as NombreDoctor,
cantidad_tratamientos as CantidadTratamientos,
nombre_paciente as NombrePaciente
from tratamiento
inner join paciente on tratamiento.id_paciente=paciente.id_paciente
inner join profesional on paciente.id_profesional=profesional.id_profesional