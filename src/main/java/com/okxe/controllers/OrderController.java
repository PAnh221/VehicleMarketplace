package com.okxe.controllers;

import com.okxe.beans.Order;
import com.okxe.dao.OrderDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
public class OrderController {
    // ORDER STATUS:
    // 1 - PENDING
    // 2 - ACCEPTED
    // 3 - REJECTED
    @Autowired
    OrderDAO orderDAO;

    @RequestMapping("okxe/order/add/{userId}/{bikeId}")
    public String createOrder(ModelMap model, @PathVariable Integer userId, @PathVariable Integer bikeId){
        Order order = new Order(userId, bikeId, new Date(), 1);
        orderDAO.insert(order);
        return "okxe/dashboard-pending-ads";
    }

    @RequestMapping("okxe/order/accept/{orderId}")
    public String sellerAcceptOrder(ModelMap model, @PathVariable Integer orderId) {
        Order order = orderDAO.getById(orderId);
        order.setStatus(2);
        orderDAO.update(order);
        return "okxe/";
    }

    @RequestMapping("okxe/order/reject/{orderId}")
    public String sellerRejectOrder(ModelMap model, @PathVariable Integer orderId) {
        Order order = orderDAO.getById(orderId);
        order.setStatus(3);
        orderDAO.update(order);
        return "okxe/";
    }
}
