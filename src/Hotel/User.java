package Hotel;

/**
 * Created by abner on 11/1/14.
 */
public class User {

    private String firstname;
    private String lastname;
    private String address;
    private String email;
    private String phone;
    private String username; //for employee login
    private String password; //for employee login
    private int checkin;
    private int checkout;
    private int creditCardNum;
    private int creditCardMonth;
    private int creditCardYear;
    private int creditCardCvv;

    public boolean isValid; //to authenticate employee login

    public User(String f, String l, String a, String e, int ci, int co, int ccn, int ccm, int ccy, int cccvv) {

        firstname = f;
        lastname = l;
        address = a;
        email = e;
        checkin = ci;
        checkout = co;
        creditCardNum = ccn;
        creditCardMonth = ccm;
        creditCardYear = ccy;
        creditCardCvv = cccvv;

    }

    public User() {

        firstname = null;
        lastname = null;
        address = null;
        email = null;
        checkin = 0;
        checkout = 0;
        creditCardNum = 0;
        creditCardMonth = 0;
        creditCardYear = 0;
        creditCardCvv = 0;

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

    public int getCheckin() {
        return checkin;
    }

    public void setCheckin(int checkin) {
        this.checkin = checkin;
    }

    public int getCheckout() {
        return checkout;
    }

    public void setCheckout(int checkout) {
        this.checkout = checkout;
    }

    public int getCreditCardNum() {
        return creditCardNum;
    }

    public void setCreditCardNum(int creditCardNum) {
        this.creditCardNum = creditCardNum;
    }

    public int getCreditCardMonth() {
        return creditCardMonth;
    }

    public void setCreditCardMonth(int creditCardMonth) {
        this.creditCardMonth = creditCardMonth;
    }

    public int getCreditCardYear() {
        return creditCardYear;
    }

    public void setCreditCardYear(int creditCardYear) {
        this.creditCardYear = creditCardYear;
    }

    public int getCreditCardCvv() {
        return creditCardCvv;
    }

    public void setCreditCardCvv(int creditCardCvv) {
        this.creditCardCvv = creditCardCvv;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isValid() {
        return isValid;
    }

    public void setValid(boolean isValid) {
        this.isValid = isValid;
    }
}
