package service;

import bean.User;
import db.DBConnect;
import db.JDBIConnector;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;


public class UserService {
    private static UserService instance;

    private UserService() {
    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }
    public User checkLogin(String email, String password) {
        List<User> users = JDBIConnector.get().withHandle(h ->
                h.createQuery("SELECT ACCOUNTS.id, ACCOUNTS.email, ACCOUNTS.pass, ACCOUNTS.name, ACCOUNTS.role, ACCOUNTS.status,ACCOUNTS.type  FROM ACCOUNTS WHERE ACCOUNTS.email = ?")
                        .bind(0, email)
                        .mapToBean(User.class)
                        .stream()
                        .collect(Collectors.toList())
        );
        if (users.size() != 1) return null;
        User user = users.get(0);
        if (!user.getPass().equals(hashPassword(password))
                ||!user.getEmail().equals(email)
        ) return null;
        return user;
    }
    public static String hashPassword(String password) {
        try {
            MessageDigest sha256 = null;
            sha256 = MessageDigest.getInstance("SHA-256");
            byte[] hash = sha256.digest(password.getBytes());
            BigInteger number = new BigInteger(1, hash);
            return number.toString(16);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }
    public static User findById(String Id){
        Statement stm = DBConnect.getInstall().get();
        User user;
        try {
            ResultSet rs = stm.executeQuery("SELECT ID, EMAIL, PASS, NAME, ROLE, STATUS, TYPE ,ISADD,ISEDIT,ISDELETE FROM accounts WHERE  accounts.ID = '"+ Id+"'");
            while(rs.next()) {
                user = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7),rs.getInt(8), rs.getInt(9), rs.getInt(10));
                if (user != null) {
                    return user;
                }
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);

        }
        return null;
    }

    public static List<User> getListAcc(){
        List<User> list = new ArrayList<User>();
        Statement statement = DBConnect.getInstall().get();
        if(statement !=null){
            try{
                ResultSet rsAcc = statement.executeQuery("select ID, EMAIL, PASS, NAME, ROLE, STATUS, TYPE, ISADD, ISEDIT, ISDELETE from ACCOUNTS;");
                while(rsAcc.next()){
                    list.add(new User(rsAcc.getString(1), rsAcc.getString(2), rsAcc.getString(3), rsAcc.getString(4), rsAcc.getInt(5), rsAcc.getInt(6), rsAcc.getString(7), rsAcc.getInt(8), rsAcc.getInt(9), rsAcc.getInt(10)));
                }
            }
            catch (SQLException e){
                e.printStackTrace();
            }
        }
        else{
            System.out.println("Không có tai khoan");
        }
        return list;

    }
    public static List<User> getListUser(){
        List<User> list = new ArrayList<User>();
        Statement statement = DBConnect.getInstall().get();
        if(statement !=null){
            try{
                ResultSet rsAcc = statement.executeQuery("select  ACCOUNTS.ID, ACCOUNTS.EMAIL, ACCOUNTS.PASS, ACCOUNTS.NAME, ACCOUNTS.ROLE, ACCOUNTS.STATUS, ACCOUNTS.TYPE, ACCOUNTS.ISADD, ACCOUNTS.ISEDIT, ACCOUNTS.ISDELETE from ACCOUNTS");
                while(rsAcc.next()){
                    list.add(new User(rsAcc.getString(1), rsAcc.getString(2), rsAcc.getString(3), rsAcc.getString(4), rsAcc.getInt(5), rsAcc.getInt(6), rsAcc.getString(7), rsAcc.getInt(8), rsAcc.getInt(9), rsAcc.getInt(10)));
                }
            }
            catch (SQLException e){
                e.printStackTrace();
            }
        }
        else{
            System.out.println("Không có tai khoan");
        }
        return list;

    }
    public static String getLastMaTK(){
        Statement statement = DBConnect.getInstall().get();
        String result = "";
        if (statement != null)
            try {
                ResultSet rs = statement.executeQuery("SELECT ACCOUNTS.ID from ACCOUNTS ORDER BY ID DESC LIMIT 1");
                while (rs.next()){
                    result = rs.getString(1);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        else {
            System.out.println("Không có đơn hàng");
        }
        return  result;
    }
    public static boolean checkEmail(String email){
        List<User> list = getListAcc();
        List<String> listEmail = new ArrayList<String>();
        for(User a : list){
            listEmail.add(a.getEmail());
        }
        if (!listEmail.contains(email)) {
            return true;
        }else
        return false;
    }
    public static void register(User acc){
        Statement stm = DBConnect.getInstall().get();
        String stt = getLastMaTK().substring(2);
        String ID = "AD" + (Integer.parseInt(stt) + 1);
        acc.setId(ID);
        if(stm!= null) {
            try {
                String sql = "insert into ACCOUNTS values('" + ID + "', '" + acc.getEmail() + "', '" + hashPassword(acc.getPass())  + "', '" + acc.getName() + "'," + acc.getRole() +","+ acc.getStatus()+","+acc.getType()+",0,0,0);";
                stm.executeUpdate(sql);

            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
    public static void addAccGG(User acc){
        Statement stm = DBConnect.getInstall().get();
        if(stm!= null) {
            try {
                String sql = "insert into ACCOUNTS(ID,EMAIL,NAME,ROLE, STATUS,TYPE, ISADD, ISEDIT, ISDELETE) values('" + acc.getId() + "', '" + acc.getEmail() + "', '" + acc.getName() + "'," + acc.getRole() +","+ acc.getStatus()+",'"+acc.getType()+"',0,0,0);";
                stm.executeUpdate(sql);
                System.out.println(sql);
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }

    public static int randomCode(){
        return  (int) Math.floor(((Math.random() * 899999) + 100000));
    }
    public static void updatePass(String email, String pass)  {
        String sql = "UPDATE ACCOUNTS set PASS = '"+pass+"' where EMAIL like "+ "'"+email+"'";
        Statement stm  =  DBConnect.getInstall().get();
        try {
            stm.executeUpdate(sql);

        } catch (SQLException se) {
            se.printStackTrace();
        }
    }

    public static void updateProfile(String name, String sdt, String diachi, String mail, String id, User user)  {
        if(name == null || sdt == null || diachi == null || mail == null) return;
        String sql1 = "UPDATE CUSTOMERS, ACCOUNTS set CUSTOMERS.ADDRESS = '"+diachi+"', " +
                "CUSTOMERS.PHONE = '"+sdt+"', ACCOUNTS.EMAIL = '"+mail+"'," +
                " ACCOUNTS.NAME='" +name+"'" +
                " WHERE CUSTOMERS.id = '"+id+"' and CUSTOMERS.id = ACCOUNTS.id";
        Statement stm  =  DBConnect.getInstall().get();
        try {
            stm.executeUpdate(sql1);
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }
    public static void updateProfile(String name, String sdt, String diachi, String mail, User auth)  {
        if(name == null || sdt == null || diachi == null || mail == null) return;
        String idACC = auth.getId();
        String sql1 = "UPDATE CUSTOMERS, ACCOUNTS set CUSTOMERS.ADDRESS = '"+diachi+"', " +
                "CUSTOMERS.PHONE = '"+sdt+"', ACCOUNTS.EMAIL = '"+mail+"'," +
                " ACCOUNTS.NAME='" +name+"'" +
                " WHERE CUSTOMERS.id = '"+idACC+"' and CUSTOMERS.id = ACCOUNTS.id";
        Statement stm  =  DBConnect.getInstall().get();
        try {
            stm.executeUpdate(sql1);
            auth.setName(name);
            auth.setEmail(mail);
            CustomerService.getCusByIdAcc(auth.getId()).setDIACHI(diachi);
            CustomerService.getCusByIdAcc(auth.getId()).setSDT(sdt);
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }
    public static User findByEmail(String email){
        for(User u: getListAcc()){
            if(!checkEmail(email) && u.getEmail().equals(email)){
                return u;
            }
        }
        return null;
    }
    public static void updateType(String email, String type)  {
        String sql = "UPDATE ACCOUNTS set TYPE = '"+type+"' where EMAIL like "+ "'"+email+"'";
        Statement stm  =  DBConnect.getInstall().get();
        try {
            stm.executeUpdate(sql);

        } catch (SQLException se) {
            se.printStackTrace();
        }
    }

    public static void main(String[] args) throws UnsupportedEncodingException, SQLException {



    }
}
