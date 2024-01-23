package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Users{
    private int id;
    private String name;
    private String avatar;
    private String username;
    private String gender;
    private String birthdate;
    private Role roleId;
    private String phone;
    private String email;
    private String password;
    private String address;
    private boolean emailConfirmed;

    public Users(int id, String name, String avatar, String username, String gender, String birthdate, Role roleId, String phone, String email, String password, String address, boolean emailConfirmed) {
        this.id = id;
        this.name = name;
        this.avatar = avatar;
        this.username = username;
        this.gender = gender;
        this.birthdate = birthdate;
        this.roleId = roleId;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.address = address;
        this.emailConfirmed = emailConfirmed;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public Role getRoleId() {
        return roleId;
    }

    public void setRoleId(Role roleId) {
        this.roleId = roleId;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isEmailConfirmed() {
        return emailConfirmed;
    }

    public void setEmailConfirmed(boolean emailConfirmed) {
        this.emailConfirmed = emailConfirmed;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", avatar='" + avatar + '\'' +
                ", username='" + username + '\'' +
                ", gender='" + gender + '\'' +
                ", birthdate='" + birthdate + '\'' +
                ", roleId=" + roleId +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                ", emailConfirmed=" + emailConfirmed +
                '}';
    }
    public Users(){

    }
}