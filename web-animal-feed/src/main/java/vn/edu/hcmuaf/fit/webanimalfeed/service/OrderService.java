package vn.edu.hcmuaf.fit.webanimalfeed.service;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.OrderDao;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Orders;

import java.util.List;

public class OrderService {
    public static List<Orders> getAll(){
        return OrderDao.findAll();
    }
}
