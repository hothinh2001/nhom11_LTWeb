package vn.edu.hcmuaf.fit.webanimalfeed.utils;

public class GeneralIdUtils {
    public static String generateId() {
        return String.valueOf(
                (int) Math.floor(
                        ((Math.random() * 899999) + 100000)));// 6 digits
    }

    public static void main(String[] args) {
        System.out.println(generateId());
    }
}
