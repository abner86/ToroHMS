package Hotel;

import java.util.Date;

/**
 * Created by abner on 11/1/14.
 */
public class User {

    private String firstname;
    private String lastname;
    private String address;
    private String city;
    private String state;
    private String zip;
    private String email;
    private String phone;
    private String username; //for employee login
    private String password; //for employee login
    private Date checkin;
    private Date checkout;
    private String RoomType;
    private int NumOfPeople;
    private int creditCardNum;
    private int expiration;
    private int SecurityCode;
    private Double Total;
    public boolean isValid; //to authenticate employee login

    public User(String f, String l, String a, String c, String s, String z, String p, String e, Date ci, Date co, int ccn, int ccm, int ccy, int cccvv) {

        firstname = f;
        lastname = l;
        address = a;
        city = c;
        state = s;
        zip = z;
        phone = p;
        email = e;
        checkin = ci;
        checkout = co;
        creditCardNum = ccn;
    }

    public User() {

        firstname = null;
        lastname = null;
        address = null;
        city = null;
        state = null;
        zip = null;
        phone = null;
        email = null;
        checkin = null;
        checkout = null;
        creditCardNum = 0;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getCheckin() {
        return checkin;
    }

    public void setCheckin(Date checkin) {
        this.checkin = checkin;
    }

    public Date getCheckout() {
        return checkout;
    }

    public void setCheckout(Date checkout) {
        this.checkout = checkout;
    }

    public int getCreditCardNum() {
        return creditCardNum;
    }

    public void setCreditCardNum(int creditCardNum) {
        this.creditCardNum = creditCardNum;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public boolean isValid() {
        return isValid;
    }

    public void setValid(boolean isValid) {
        this.isValid = isValid;
    }

    public String getRoomType() {
        return RoomType;
    }

    public void setRoomType(String roomType) {
        RoomType = roomType;
    }

    public int getNumOfPeople() {
        return NumOfPeople;
    }

    public void setNumOfPeople(int numOfPeople) {
        NumOfPeople = numOfPeople;
    }

    public int getExpiration() {
        return expiration;
    }

    public void setExpiration(int expiration) {
        this.expiration = expiration;
    }

    public int getSecurityCode() {
        return SecurityCode;
    }

    public void setSecurityCode(int securityCode) {
        SecurityCode = securityCode;
    }

    public Double getTotal() {
        return Total;
    }

    public void setTotal(Double total) {
        Total = total;
    }
}
