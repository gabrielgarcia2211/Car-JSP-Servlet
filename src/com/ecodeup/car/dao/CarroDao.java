package com.ecodeup.car.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ecodeup.car.model.Carro;
import com.ecodeup.car.model.Conexion;
 

public class CarroDao {
	
	private Conexion con;
	private Connection connection;
 
	public CarroDao(String jdbcURL, String jdbcUsername, String jdbcPassword) throws SQLException {
		System.out.println(jdbcURL);
		
	}
 
	// insertar auto
	public boolean insertar(Carro car) throws SQLException {
		String sql = "INSERT INTO carro (Codcoche, Nombre, Modelo, Precio, Cantidad, Placa) VALUES (?, ?, ?, ?, ?, ?)";
		con.conectar();
		connection = con.getJdbcConnection();
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, null);
		statement.setString(2, car.getNombre());
		statement.setString(3, car.getModelo());
		statement.setInt(4, car.getPrecio());
		statement.setInt(5, car.getCantidad());
		statement.setString(6, car.getPlaca());
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		con.desconectar();
		return rowInserted;
	}
	
	// listar todos los autos
		public List<Carro> listarAutos() throws SQLException {
	 
			List<Carro> ListCar = new ArrayList<Carro>();
			String sql = "SELECT * FROM carro";
			con.conectar();
			connection = con.getJdbcConnection();
			Statement statement = connection.createStatement();
			ResultSet resulSet = statement.executeQuery(sql);
	 
			while (resulSet.next()) {
				int id = resulSet.getInt("Codcoche");
				String nombre = resulSet.getString("Nombre");
				String modelo = resulSet.getString("Modelo");
				int precio = resulSet.getInt("Precio");
				int cantidad = resulSet.getInt("Cantidad");
				String placa = resulSet.getString("Placa");
				Carro coche = new Carro(id,nombre,modelo, precio,cantidad, placa);
				ListCar.add(coche);
			}
			con.desconectar();
			return ListCar;
		}
		
		// obtener por id
		public Carro obtenerPorId(int id) throws SQLException {
			Carro car = null;
	 
			String sql = "SELECT * FROM carro WHERE Codcoche= ? ";
			con.conectar();
			connection = con.getJdbcConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
	 
			ResultSet res = statement.executeQuery();
			if (res.next()) {
				car = new Carro(res.getInt("Codcoche"), res.getString("Nombre"), res.getString("Modelo"),res.getInt("Precio"),res.getInt("Cantidad"), res.getString("Placa"));
			}
			res.close();
			con.desconectar();
	 
			return car;
		}
	 
		// actualizar
		public boolean actualizar(Carro car) throws SQLException {
			boolean rowActualizar = false;
			String sql = "UPDATE carro SET Nombre=?,Modelo=?, Precio=?, Cantidad=?, Placa=? WHERE Codcoche=?";
			con.conectar();
			connection = con.getJdbcConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, car.getNombre());
			statement.setString(2, car.getModelo());
			statement.setInt(3, car.getPrecio());
			statement.setInt(4, car.getCantidad());
			statement.setString(5, car.getPlaca());
			statement.setInt(6, car.getCodcoche());
	 
			rowActualizar = statement.executeUpdate() > 0;
			statement.close();
			con.desconectar();
			return rowActualizar;
		}
		
		//eliminar
		public boolean eliminar(Carro car) throws SQLException {
			boolean rowEliminar = false;
			String sql = "DELETE FROM carro WHERE Codcoche=?";
			con.conectar();
			connection = con.getJdbcConnection();
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, car.getCodcoche());
	 
			rowEliminar = statement.executeUpdate() > 0;
			statement.close();
			con.desconectar();
	 
			return rowEliminar;
		}
	
}
