package Hotel;

/**
 * Created by abner on 11/1/14.
 */
public class User {

    private String firstname;
    private String lastname;
    private String address;
    private String email;
    private String username; //for employee login
    private String password; //for employee login
    private int checkinMonth;
    private int checkinDay;
    private int checkinYear;
    private int checkoutMonth;
    private int checkoutDay;
    private int checkoutYear;
    private int creditCardNum;
    private int creditCardMonth;
    private int creditCardYear;
    private int creditCardCvv;

    public boolean isValid; //to authenticate employee login

    public User(String f, String l, String a, String e, int cid, int cim, int ciy, int cod, int com, int coy, int ccn, int ccm, int ccy, int cccvv) {

        firstname = f;
        lastname = l;
        address = a;
        email = e;
        checkinDay = cid;
        checkinMonth = cim;
        checkinYear = ciy;
        checkoutDay = cod;
        checkoutMonth = com;
        checkoutYear = coy;
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
        checkinDay = 0;
        checkinMonth = 0;
        checkinYear = 0;
        checkoutDay = 0;
        checkoutMonth = 0;
        checkoutYear = 0;
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

    public int getCheckinMonth() {
        return checkinMonth;
    }

    public void setCheckinMonth(int checkinMonth) {
        this.checkinMonth = checkinMonth;
    }

    public int getCheckinDay() {
        return checkinDay;
    }

    public void setCheckinDay(int checkinDay) {
        this.checkinDay = checkinDay;
    }

    public int getCheckinYear() {
        return checkinYear;
    }

    public void setCheckinYear(int checkinYear) {
        this.checkinYear = checkinYear;
    }

    public int getCheckoutMonth() {
        return checkoutMonth;
    }

    public void setCheckoutMonth(int checkoutMonth) {
        this.checkoutMonth = checkoutMonth;
    }

    public int getCheckoutDay() {
        return checkoutDay;
    }

    public void setCheckoutDay(int checkoutDay) {
        this.checkoutDay = checkoutDay;
    }

    public int getCheckoutYear() {
        return checkoutYear;
    }

    public void setCheckoutYear(int checkoutYear) {
        this.checkoutYear = checkoutYear;
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

    public boolean isValid() {
        return isValid;
    }

    public void setValid(boolean isValid) {
        this.isValid = isValid;
    }
}
