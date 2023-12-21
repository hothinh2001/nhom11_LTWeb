package vn.edu.hcmuaf.fit.webanimalfeed.service;

import vn.edu.hcmuaf.fit.webanimalfeed.entity.CartProduct;

import java.util.Map;

public interface CartService {

    boolean add(int add);

    boolean add(int add, int quantity);

    boolean remove(int id);

    int getTotalQuantity();

    Map<Integer, CartProduct> getData();

}
