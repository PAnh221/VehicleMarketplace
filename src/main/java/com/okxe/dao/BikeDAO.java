package com.okxe.dao;

import java.io.Serializable;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.okxe.beans.Bike;

@Repository
public class BikeDAO {
    @Autowired
    protected JdbcTemplate jdbc;

    private RowMapper<Bike> getRowMapper() {
        return new BeanPropertyRowMapper<Bike>(Bike.class);
    }

    protected List<Bike> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    public List<Bike> getAll() {
        String sql = "SELECT * FROM bike";
        return getBySql(sql);
    }

    public List<Bike> getAllAsc() {
        String sql = "SELECT * FROM bike ORDER BY price ASC";
        return getBySql(sql);
    }

    public List<Bike> getAllDesc() {
        String sql = "SELECT * FROM bike ORDER BY price DESC";
        return getBySql(sql);
    }

    public Bike getById(Serializable id) {
        String sql = "SELECT * FROM bike WHERE bike_id=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    public List<Bike> getBikeById(int id) {
        String sql = "SELECT * FROM bike WHERE bike_id=?";
        return jdbc.query(sql, getRowMapper(), id);
    }

    public List<Bike> getBikeByName(String id) {
        String sql = "SELECT * FROM bike WHERE name LIKE ?";
        return jdbc.query(sql, getRowMapper(), id);
    }

    public List<Bike> getByUserId(Serializable id) {
        String sql = "SELECT * FROM bike WHERE user_id=?";
        return jdbc.query(sql, getRowMapper(), id);
    }

    public List<Bike> getBikeByBrandId(Integer categoryId) {
        String sql = "SELECT * FROM bike WHERE brand_id=?";
        return jdbc.query(sql, getRowMapper(), categoryId);
    }

    public List<Bike> getBikeByBrandIdAsc(Integer categoryId) {
        String sql = "SELECT * FROM bike WHERE brand_id=? ORDER BY price ASC";
        return jdbc.query(sql, getRowMapper(), categoryId);
    }

    public List<Bike> getBikeByBrandIdDesc(Integer categoryId) {
        String sql = "SELECT * FROM bike WHERE brand_id=? ORDER BY price DESC";
        return jdbc.query(sql, getRowMapper(), categoryId);
    }

    public void insert(Bike entity) {
        String sql = "INSERT INTO " +
                "bike (name, price, year, color, odo, type_id, engine, brand_id, user_id, image, posted_date, status) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
        jdbc.update(sql, entity.getName(), entity.getPrice(),
                entity.getYear(), entity.getColor(),
                entity.getOdo(), entity.getType_id(),
                entity.getEngine(), entity.getBrand_id(),
                entity.getUser_id(), entity.getImage(),
                entity.getPosted_date(), entity.getStatus());
    }

    public void update(Bike entity) {
        String sql = "UPDATE bike " +
                "SET name=?, price=?, year=?, color=?, odo=?, type_id=?, engine=?, brand_id=?, user_id=?, image=?, posted_date=?, status=? " +
                "WHERE bike_id=?";
        jdbc.update(sql, entity.getName(), entity.getPrice(),
                entity.getYear(), entity.getColor(),
                entity.getOdo(), entity.getType_id(),
                entity.getEngine(), entity.getBrand_id(),
                entity.getUser_id(), entity.getImage(),
                entity.getPosted_date(), entity.getStatus(), entity.getBike_id());
    }

    public void delete(Serializable id) {
        String sql = "DELETE FROM bike WHERE bike_id=?";
        jdbc.update(sql, id);
    }

//    public List<Bike> getLastRow() {
//        String sql = "SELECT * " +
//                "FROM bike " +
//                "ORDER BY bike_id " +
//                "DESC LIMIT 0, 1\n";
//        return jdbc.queryForObject();
//    }

    public List<Bike> getAddedBike() {
        String sql = """
                 (SELECT `AUTO_INCREMENT` as bike_id
                FROM  INFORMATION_SCHEMA.TABLES
                WHERE TABLE_SCHEMA = 'okxe'
                  AND   TABLE_NAME   = 'bike')""";
        return jdbc.query(sql, getRowMapper());

    }







}
