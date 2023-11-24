package com.skilldistillery.film.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.skilldistillery.film.entities.Film;

public class FilmDaoJdbcImpl implements FilmDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=US/Mountain";
	private static final String USER = "student";
	private static final String PWD = "student";

	public FilmDaoJdbcImpl() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.err.println(e);
		}
	}

	@Override
	public Film findById(int filmId) {
		Film film = null;
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PWD);
			String sql = "SELECT * FROM film WHERE id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();
			if(rs.next())
				film = mapFilmData(rs);
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return film;
	}

	@Override
	public List<Film> searchByKeyword(String keyword) {
		List<Film> films = new ArrayList<>();
		try {
			Connection conn = DriverManager.getConnection(URL, USER, PWD);
			String sql = "SELECT * FROM film WHERE film.title LIKE ? OR film.description LIKE ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, "%" + keyword + "%");
			stmt.setString(2, "%" + keyword + "%");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Film film = mapFilmData(rs);
				films.add(film);
			}
			
			rs.close();
			stmt.close();
			conn.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return films;
	}

	private Film mapFilmData(ResultSet filmResult) throws SQLException {
		int id = filmResult.getInt("id");
		String title = filmResult.getString("title");
		String description = filmResult.getString("description");
		Integer releaseYear = filmResult.getInt("release_year");
		int languageId = filmResult.getInt("language_id");
		int rentalDuration = filmResult.getInt("rental_duration");
		double rentalRate = filmResult.getDouble("rental_rate");
		Integer length = filmResult.getInt("length");
		double replacementCost = filmResult.getDouble("replacement_cost");
		String rating = filmResult.getString("rating");
		String specialFeatures = filmResult.getString("special_features");
		String language = "";
		
		return new Film(id, title, description, releaseYear, languageId, rentalDuration, rentalRate, length,
				replacementCost, rating, specialFeatures, language);

	}

}
