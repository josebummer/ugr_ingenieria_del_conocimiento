;Practica 1 - Ingenieria del Conocimiento
;Jose Antonio Ruiz Millan

;Para cargar los ficheros en CLIPS, cargarlos en el orden de los números en el nombre del fichero.

; Definimos el template de empleado para definir a los empleados.
(deftemplate Empleado
	(field empleado)
	(field habitacion)
)
; Template para guardar que tarea realiza cada empleado
(deftemplate Tarea
	(field empleado)
	(field tarea)
)
; Template para almacenar que usuarios altiende cada empleado
(deftemplate Atiende
	(field empleado)
	(field usuario)
)
;Metemos los empleados en sus respectivas habitaciones
(deffacts Empleados
	(Empleado
		(empleado G1)
		(habitacion 1)
	)
	(Empleado
		(empleado G2)
		(habitacion 2)
	)
	(Empleado
		(empleado G3)
		(habitacion 3)
	)
	(Empleado
		(empleado G4)
		(habitacion 4)
	)
	(Empleado
		(empleado G5)
		(habitacion 5)
	)
	(Empleado
		(empleado E1)
		(habitacion 6)
	)
	(Empleado
		(empleado E2)
		(habitacion 6)
	)
)

;Cuando abren las oficinas, asumo que siempre comienzan todos disponibles
(deffacts Empleados_libres
	(Disponible G1)
	(Disponible G2)
	(Disponible G3)
	(Disponible G4)
	(Disponible G5)
	(Disponible E1)
	(Disponible E2)
)
;Creamos las parejas de empleado con tarea que realiza
(deffacts Tareas
	(Tarea (empleado G1) (tarea TG))
	(Tarea (empleado G2) (tarea TG))
	(Tarea (empleado G3) (tarea TG))
	(Tarea (empleado G4) (tarea TG))
	(Tarea (empleado G5) (tarea TG))
	(Tarea (empleado E1) (tarea TE))
	(Tarea (empleado E2) (tarea TE))
)

;Regla para cuando un empleado esta libre y hay usuarios esperando
(defrule Siguiente_usuario
	?i <- (Disponible ?empleado)
	(Empleado (habitacion ?habitacion) (empleado ?empleado))
	(Tarea (empleado ?empleado) (tarea ?tarea))
	;Comprueba si quedan usuarios para antender
	?j <- (Usuario (tarea ?tarea) (identificador ?usuario) (atendido N))
	?k <- (cola ?cola)
	=>
	(bind ?resultado (- ?cola 1))
	(assert (cola ?resultado))
	;En mi caso, vamos a dejar los usuarios alamacenados. En caso de cuando un usuario haya sido antendido borrarlo, solo tenemos que quitar este assert y listo.
	(assert (Usuario
				(tarea ?tarea)
				(identificador ?usuario)
				(atendido S)
			)
	)
	(assert (Atiende
				(empleado ?empleado)
				(usuario ?usuario)
			)
	)
	(retract ?i)
	(retract ?j)
	(retract ?k)
	(printout t crlf "Usuario " ?usuario "-" ?tarea " pasa a la sala " ?habitacion)
)