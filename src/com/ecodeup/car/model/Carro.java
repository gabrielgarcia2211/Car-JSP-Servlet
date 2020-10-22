package com.ecodeup.car.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Carro {
	
	private int Codcoche;
	private String nombre;
	private String modelo;
	private int Precio;
	private int Cantidad;
	private String Placa;

	
}
