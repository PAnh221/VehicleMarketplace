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
        int status = 1;
        String sql = "SELECT * FROM bike WHERE status=?";
        return jdbc.query(sql, getRowMapper(), status);
    }

    public List<Bike> getAllAsc() {
        int status = 1;
        String sql = "SELECT * FROM bike WHERE status=? ORDER BY price ASC";
        return jdbc.query(sql, getRowMapper(), status);
    }

    public List<Bike> getAllDesc() {
        int status = 1;
        String sql = "SELECT * FROM bike WHERE status=? ORDER BY price DESC";
        return jdbc.query(sql, getRowMapper(), status);
    }

    public Bike getById(Serializable id) {
        String sql = "SELECT * FROM bike WHERE bike_id=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    public List<Bike> getBikeById(int id) {
        String sql = "SELECT * FROM bike WHERE bike_id=?";
        return jdbc.query(sql, getRowMapper(), id);
    }

    public List<Bike> getBikeByName(String name) {
        int status = 1;
        String sql = "SELECT * FROM bike WHERE name LIKE ? and status = ?";
        return jdbc.query(sql, getRowMapper(), name, status);
    }

    public List<Bike> getByUserId(Serializable id) {
        String sql = "SELECT * FROM bike WHERE user_id=?";
        return jdbc.query(sql, getRowMapper(), id);
    }

    public List<Bike> getActiveByUserId(Serializable id) {
        int status = 1;
        String sql = "SELECT * FROM bike WHERE user_id=? and status = ?";
        return jdbc.query(sql, getRowMapper(), id, status);
    }

    public List<Bike> getBikeByBrandId(Integer categoryId) {
        int status = 1;
        String sql = "SELECT * FROM bike WHERE brand_id=? and status=?";
        return jdbc.query(sql, getRowMapper(), categoryId, status);
    }

    public List<Bike> getBikeByBrandIdAsc(Integer categoryId) {
        int status = 1;
        String sql = "SELECT * FROM bike WHERE brand_id=? and status=? ORDER BY price ASC";
        return jdbc.query(sql, getRowMapper(), categoryId, status);
    }

    public List<Bike> getBikeByBrandIdDesc(Integer categoryId) {
        int status = 1;
        String sql = "SELECT * FROM bike WHERE brand_id=? and status=? ORDER BY price DESC";
        return jdbc.query(sql, getRowMapper(), categoryId, status);
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
        int status = 0;
        String sql = "UPDATE bike " +
                "SET status=? " +
                "WHERE bike_id=?";
        jdbc.update(sql, status, id);
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
