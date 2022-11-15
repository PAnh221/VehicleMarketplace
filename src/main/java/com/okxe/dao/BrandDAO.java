package com.okxe.dao;

import com.okxe.beans.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public class BrandDAO {
    @Autowired
    protected JdbcTemplate jdbc;

    private RowMapper<Brand> getRowMapper() {
        return new BeanPropertyRowMapper<Brand>(Brand.class);
    }

    protected List<Brand> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    public List<Brand> getAll() {
        String sql = "SELECT * FROM brand";
        return getBySql(sql);
    }

    public Brand getById(Serializable id) {
        String sql = "SELECT * FROM brand WHERE brand_id=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    public Brand getByName(String id) {
        String sql = "SELECT * FROM brand WHERE brandname=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    public List<Brand> getBrandByBrandId(Integer categoryId) {
        String sql = "SELECT * FROM bike WHERE brand_id=?";
        return jdbc.query(sql, getRowMapper(), categoryId);
    }

    public void insert(Brand entity) {
        String sql = "INSERT INTO " +
                "brand (brandname, description) " +
                "VALUES (?,?)";
        jdbc.update(sql, entity.getBrandname(), entity.getDescription());
    }

    public void update(Brand entity) {
        String sql = "UPDATE brand " +
                "SET brandname = ?, description = ?)";
        jdbc.update(sql, entity.getBrandname(), entity.getDescription());
    }

    public void delete(Serializable id) {
        String sql = "DELETE FROM bike WHERE bike_id=?";
        jdbc.update(sql, id);
    }
}
