package model;

public class Delivery {
    private String mahd;
    private String tenKH;
    private String ngayGiao;
    private String diachigiao;
    private String email;
    private String phone;

    public Delivery(){

    }

    public Delivery(String mahd, String tenKH, String ngayGiao, String diachigiao, String email, String phone) {
        this.mahd = mahd;
        this.tenKH = tenKH;
        this.ngayGiao = ngayGiao;
        this.diachigiao = diachigiao;
        this.email = email;
        this.phone = phone;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMahd() {
        return mahd;
    }

    public void setMahd(String mahd) {
        this.mahd = mahd;
    }

    public String getNgayGiao() {
        return ngayGiao;
    }

    public void setNgayGiao(String ngayGiao) {
        this.ngayGiao = ngayGiao;
    }

    public String getDiachigiao() {
        return diachigiao;
    }

    public void setDiachigiao(String diachigiao) {
        this.diachigiao = diachigiao;
    }
}
