;Practica 1 - Ingenieria del Conocimiento
;Jose Antonio Ruiz Millan

;Para cargar los ficheros en CLIPS, cargarlos en el orden de los números en el nombre del fichero.

; Definimos una template para la habitacion en la que indicaremos el numero de habitacion
(deftemplate Habitacion
	(field habitacion)
)

;Datos de las habitaciones
(deffacts Habitaciones
	(Habitacion
		(habitacion 1)
	)
	(Habitacion
		(habitacion 2)
	)
	(Habitacion
		(habitacion 3)
	)
	(Habitacion
		(habitacion 4)
	)
	(Habitacion
		(habitacion 5)
	)
	(Habitacion
		(habitacion 6)
	)
)
