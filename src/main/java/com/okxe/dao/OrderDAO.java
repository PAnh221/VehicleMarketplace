package com.okxe.dao;

import com.okxe.beans.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

@Repository
public class OrderDAO {
    @Autowired
    protected JdbcTemplate jdbc;

    private RowMapper<Order> getRowMapper() {
        return new BeanPropertyRowMapper<Order>(Order.class);
    }

    protected List<Order> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    public List<Order> getAll() {
        String sql = "SELECT * FROM order";
        return getBySql(sql);
    }

    public Order getById(Serializable id) {
        String sql = "SELECT * FROM `order` WHERE order_id=?";
        return jdbc.queryForObject(sql, getRowMapper(), id);
    }

    public List<Order> getByUserId(int id) {
        String sql = "SELECT * FROM `order` WHERE user_id=?";
        return jdbc.query(sql, getRowMapper(), id);
    }

    public List<Order> getBySellerId(int id) {
        String sql = "SELECT `order`.bike_id, `order`.order_id, `order`.user_id, `order`.date, `order`.status FROM `order`, bike \n" +
                "where bike.user_id =?  and `order`.bike_id=bike.bike_id GROUP BY bike.bike_id";
        return jdbc.query(sql, getRowMapper(), id);
    }

    public void insert(Order entity) {
        String sql = "INSERT INTO " +
                "`order` (user_id, bike_id, date, status) " +
                "VALUES (?,?,?,?)";
        jdbc.update(sql, entity.getUser_id(), entity.getBike_id(), entity.getDate(), entity.getStatus());
    }

    public void update(Order entity) {
        String sql = "UPDATE `order` " +
                "SET user_id = ?, bike_id = ?, date = ?, status = ? WHERE order_id = ?";
        jdbc.update(sql, entity.getUser_id(), entity.getBike_id(), entity.getDate(), entity.getStatus(), entity.getOrder_id());
    }

    public void delete(Serializable id) {
        String sql = "DELETE FROM `order` WHERE order_id=?";
        jdbc.update(sql, id);
    }
}
