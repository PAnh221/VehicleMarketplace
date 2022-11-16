package com.okxe.dao;

import com.okxe.beans.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public class UserDAO {
    @Autowired
    protected JdbcTemplate jdbc;

    private RowMapper<User> getRowMapper() {
        return new BeanPropertyRowMapper<User>(User.class);
    }

    protected List<User> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    public List<User> getAll() {
        String sql = "select *\n" +
                "from okxe.user;";
        return getBySql(sql);
    }

    public User getById(int id) {
        String sql = "SELECT * FROM user WHERE user_id=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    public void insert(User entity) {
        String sql =
                "insert into okxe.user (username, password, phone, name, location, image, citizen_id, user_type)\n" +
                "values (?,?,?,?,?,?,?,?);";
        jdbc.update(sql, entity.getUsername(), entity.getPassword(), entity.getPhone(), entity.getName()
                , entity.getLocation(), entity.getImage(), entity.getCitizen_id(), entity.getUser_type());
    }

    public List<User> getUserByUsername(String username) {
        String sql = "select * from okxe.user where username=?";
        List<User> list = jdbc.query(sql, getRowMapper(), username);
        return list;
    }

    public List<User> getUserByCID(String CID) {
        String sql = "select * from okxe.user where citizen_id=?";

        return jdbc.query(sql, getRowMapper(), CID);
    }

    public void update(User entity) {
        String sql =
                "update okxe.user\n" +
                "set username = ?, password = ?, phone = ?, name = ?, location = ?, image = ?, citizen_id = ?, user_type = ?\n" +
                "where user_id = ?;";
        jdbc.update(sql, entity.getUsername(), entity.getPassword(), entity.getPhone(), entity.getName()
                , entity.getLocation(), entity.getImage(), entity.getCitizen_id(), entity.getUser_type(), entity.getUser_id());
    }

    public void delete(Serializable id) {
        String sql = "DELETE FROM user WHERE user_id=?";
        jdbc.update(sql, id);
    }

}
