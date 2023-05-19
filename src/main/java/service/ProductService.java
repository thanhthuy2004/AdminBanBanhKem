package service;

import db.DBConnect;
import model.*;

import java.sql.*;
import java.util.*;
public class ProductService {
    static Connection con = DBConnect.getInstall().getConn();
    public static List<Product> getData()    {
        List<Product> list = new LinkedList<Product>();
        Statement statement = DBConnect.getInstall().get();
        Statement stmt = DBConnect.getInstall().get();
        Statement stmt1 = DBConnect.getInstall().get();
        Statement stmt2 = DBConnect.getInstall().get();
        ResultSet rsCmt;
        ProductDetail detail = new ProductDetail();
        if (statement != null)
            try {
                ResultSet rs = statement.executeQuery("SELECT distinct products.idProduct ,products.productName,typeOfCake.name, products.size, products.weight, products.description, products.introduction, products.price, STATUS  from products, typeOfCake where products.idType = typeOfCake.idType");
                while (rs.next()) {
                    ResultSet rsImg = stmt.executeQuery("SELECT idImg, productImgs.idProduct,productImgs.img, status from productImgs");
                    List<Image> listImg = new LinkedList<Image>();
                    rsCmt = stmt1.executeQuery("SELECT idProduct, ACCOUNTS.NAME,comment,date, IdCmt, Comments.STATUS from Comments, ACCOUNTS where ACCOUNTS.ID = Comments.ID");
                    List<Comment> listCmts = new LinkedList<Comment>();
                    ResultSet rspd = stmt2.executeQuery("select idProduct, quantity, inventory, dateOfManufacture, expirationDate from productDetails");
                    String s1 = rs.getString(1);
                    while (rsImg.next()) {
                        String s2 = rsImg.getString(2);
                        if (s1.equals(s2)) {
                            listImg.add(new Image(rsImg.getString(1), s2,rsImg.getString(3), rsImg.getInt(4)));
                        }
                    }

                    while (rsCmt.next()) {
                        String s2 = rsCmt.getString(1);
                        int status = rsCmt.getInt(6);
                        if (s1.equals(s2) && status==0) {
                            listCmts.add(new Comment(rsCmt.getString(1), rsCmt.getString(2), rsCmt.getString(3), rsCmt.getString(4), rsCmt.getInt(5), rsCmt.getInt(6)));
                        }
                    }
                    while (rspd.next()) {
                        String s2 = rspd.getString(1);
                        if (s1.equals(s2)) {
                            detail =new ProductDetail(rspd.getString(1), rspd.getInt(2), rspd.getInt(3), rspd.getString(4), rspd.getString(5));
                        }
                    }
                    Product p = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), listImg, rs.getInt(8),listCmts, detail, rs.getInt(9));
                    list.add(p);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        else {
            System.out.println("Không có sản phẩm");
        }
        return list;
    }

    public static Product findById(String id) {
        Product p = null;
        try {
            PreparedStatement ps = con.prepareStatement("SELECT distinct products.idProduct ,products.productName,typeOfCake.name, products.size, products.weight, products.description, products.introduction, products.price, STATUS  from products, typeOfCake where products.idType = typeOfCake.idType and products.idProduct = ?");
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                p = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(7), findImagesByIdProduct(rs.getString(1)), rs.getInt(8), findCommentsByIdProduct(rs.getString(1)), findPDetailByIdProduct(rs.getString(1)), rs.getInt(9));
                }
            }catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return p;
    }


    public static int getToTalProduct() {
        return getData().size();
    }

    public static List<Product> getPaginationPageOwn(int page, List<Product> data) {

        List<Product> result = new ArrayList<>();
        int begin = (page - 1) * 15;
        int endList = begin + 15;
        if (begin > data.size() - 15) {
            endList = data.size();
        }
        for (int i = begin; i < endList; i++) {
            result.add(data.get(i));
        }
        return result;
    }


    public static  void addImg(Product p){
        Statement statement2 = DBConnect.getInstall().get();
        String sql="";
        for(Image img : p.getListImg()){

            sql = "insert into productImgs values( '"+ img.getId()+"', '"+ p.getId()+"', '"+ img.getImg()+"', 0);";
            try {
                statement2.executeUpdate(sql);
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
//    7. Chạy câu lệnh Update
    public static  void removeProduct(String id){
        Statement statement = DBConnect.getInstall().get();
        String sql = "UPDATE products set STATUS = -1 where idProduct = '"+id+"';";
        try {
            statement.executeUpdate(sql);
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }
    public static List<Product> getListProductRemove() {
        List<Product> list = new ArrayList<>();
        for(Product p : getData()){
            if(p.delete()){
                list.add(p);
            }
        }
        return list;
    }
    public static List<Product> getListProductForAdmin(){
        List<Product> res = new ArrayList<>();
        for(Product p: ProductService.getData()){
            if(!p.delete()){
                res.add(p);
            }
        }
        return res;
    }
    public static List<Comment> findCommentsByIdProduct(String idProduct){
        List<Comment> list = new ArrayList<>();
        try{
        PreparedStatement stm = con.prepareStatement("SELECT idProduct, ACCOUNTS.NAME,comment,date, IdCmt, Comments.STATUS from Comments, ACCOUNTS where ACCOUNTS.ID = Comments.ID and idProduct=?");
        stm.setString(1,idProduct);
        ResultSet rsCmt = stm.executeQuery();
        while(rsCmt.next()){
            list.add(new Comment(rsCmt.getString(1), rsCmt.getString(2), rsCmt.getString(3), rsCmt.getString(4), rsCmt.getInt(5), rsCmt.getInt(6)));
        }
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
        return list;
    }
    public static List<Image> findImagesByIdProduct(String idProduct){
        List<Image> list = new ArrayList<>();
        try {
            PreparedStatement stm = con.prepareStatement("SELECT idImg, productImgs.idProduct,productImgs.img, status from productImgs where idProduct=?");
            stm.setString(1, idProduct);
            ResultSet rsImg = stm.executeQuery();
            while (rsImg.next()) {
                list.add(new Image(rsImg.getString(1), rsImg.getString(2), rsImg.getString(3), rsImg.getInt(4)));
            }
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
    public static ProductDetail findPDetailByIdProduct(String idProduct){
        ProductDetail detail= new ProductDetail();
        try{
            PreparedStatement stm = con.prepareStatement("select idProduct, quantity, inventory, dateOfManufacture, expirationDate from productDetails where idProduct=?");
            stm.setString(1, idProduct);
            ResultSet rs= stm.executeQuery();
            while (rs.next()) {
                detail = new ProductDetail(rs.getString(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5));
            }
            }catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return detail;
    }

}
class IDComparator implements Comparator<Product> {
    public int compare(Product p1, Product p2) {
        return p2.getId().compareTo(p1.getName());
    }
}

