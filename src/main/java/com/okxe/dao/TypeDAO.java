package com.okxe.dao;

import com.okxe.beans.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public class TypeDAO {
    @Autowired
    protected JdbcTemplate jdbc;

    private RowMapper<Type> getRowMapper() {
        return new BeanPropertyRowMapper<Type>(Type.class);
    }

    protected List<Type> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    public List<Type> getAll() {
        String sql = "SELECT * FROM type";
        return getBySql(sql);
    }

    public Type getById(Serializable id) {
        String sql = "SELECT * FROM type WHERE type_id=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    public Type getByName(String id) {
        String sql = "SELECT * FROM type WHERE typename=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    public List<Type> getTypeByTypeId(Integer categoryId) {
        String sql = "SELECT * FROM bike WHERE type_id=?";
        return jdbc.query(sql, getRowMapper(), categoryId);
    }

    public void insert(Type entity) {
        String sql = "INSERT INTO " +
                "type (typename, description) " +
                "VALUES (?,?)";
        jdbc.update(sql, entity.getTypename(), entity.getDescription());
    }

    public void update(Type entity) {
        String sql = "UPDATE type " +
                "SET typename = ?, description = ?)";
        jdbc.update(sql, entity.getTypename(), entity.getDescription());
    }

    public void delete(Serializable id) {
        String sql = "DELETE FROM bike WHERE type=?";
        jdbc.update(sql, id);
    }
}
