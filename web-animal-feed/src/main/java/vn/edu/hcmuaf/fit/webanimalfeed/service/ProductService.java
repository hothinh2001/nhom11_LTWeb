package vn.edu.hcmuaf.fit.webanimalfeed.service;

import vn.edu.hcmuaf.fit.webanimalfeed.dao.ProductDAO;
import vn.edu.hcmuaf.fit.webanimalfeed.entity.Product;

import java.util.HashMap;
import java.util.Map;

public class ProductService {

    private static ProductService instance;

    public static ProductService getInstance() {
        if (instance == null) instance = new ProductService();
        return instance;
    }

    public Product getProductById(String id) {
        return ProductDAO.getProductById(id);
    }
}
