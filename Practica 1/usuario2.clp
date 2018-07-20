;Practica 1 - Ingenieria del Conocimiento
;Jose Antonio Ruiz Millan

;Para cargar los ficheros en CLIPS, cargarlos en el orden de los números en el nombre del fichero.

; Definimos el template de usuario para definir a los usuarios.
(deftemplate Usuario
	(field tarea)
	(field identificador)
	(field atendido)
)

;Regla que indica al usuario que no va a poder ser atendido
(defrule Usuario_no_coje
	(declare (salience 1))
	?i <- (Solicitud ?tarea)
	(cola ?cola)
	(tiempoconsulta ?consulta)
	(horafin ?horafin)
	(test (> (+ ?consulta (* ?cola ?consulta)) (mrest ?horafin)))
	=>
	(retract ?i)
	(printout t crlf "No queda suficiente tiempo para atenderle, vuelva otro dia. Gracias")
)

;Indica que esta fuera del horario de las oficinas para poder pedir una solicitud
(defrule Oficinas_cerradas
	(declare (salience 2))
	?i <- (Solicitud ?tarea)
	(horainicio ?horaini)
	(horafin ?horafin)
	(test (or 
			(and (< (mrest ?horafin) 0) (< (+ (mrest ?horaini) 1) 0))
			(and (>= (mrest ?horafin) 0) (>= (+ (mrest ?horaini) 1) 0))
		  )
	)
	=>
	(retract ?i)
	(printout t crlf "Estamos fuera del horario. Vuelva en otro momento. Gracias")
)

;Cada vez que tenemos una nueva solicitud metemos el usuario en la cola
(defrule Nueva_solicitud
	?j <- (Solicitud ?tarea)
	?i <- (Usuarios_Llegado ?tarea ?n)
	?k <- (cola ?cola)
	=>
	(bind ?incremento (+ ?n 1))
	(bind ?resultado (+ ?cola 1))
	(assert (Usuario
				(tarea ?tarea)
				(identificador ?incremento)
				(atendido N)
			)
	)
	(assert (cola ?resultado))
	(assert (Usuarios_Llegado ?tarea ?incremento))
	(retract ?i)
	(retract ?j)
	(retract ?k)
	(printout t crlf "Usuario " ?incremento "-" ?tarea " pasa a la cola")
)


