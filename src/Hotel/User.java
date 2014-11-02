package Hotel;

/**
 * Created by abner on 11/1/14.
 */
public class User {

    private String firstname;
    private String lastname;
    private String address;
    private String email;
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

    String getFirstname() {
        return firstname;
    }

    String getLastname() {
        return lastname;
    }

    String getAddress() {
        return address;
    }

    String getEmail() {
        return email;
    }

    int getCheckinDay() {
        return checkinDay;
    }

    int getCheckinMonth() {
        return checkinMonth;
    }

    int getCheckinYear() {
        return checkinYear;
    }

    int getCheckoutDay() {
        return checkoutDay;
    }

    int getCheckoutMonth() {
        return checkoutMonth;
    }

    int getCheckoutYear() {
        return checkoutYear;
    }

    int getCreditCardNum() {
        return creditCardNum;
    }

    int getCreditCardMonth() {
        return creditCardMonth;
    }

    int getCreditCardYear() {
        return creditCardYear;
    }

    int getCreditCardCvv() {
        return creditCardCvv;
    }
}
