package Hotel.Rooms;

/**
 * Created by kosu on 11/20/2014.
 */
import java.util.*;

/**
 * Created by kosu on 11/20/2014.
 */
public class Tester extends Room{

    /*successfully adding dates without duplicate
    *
    * need to:
    * 1. automatically or manually create new tables for each room
    * 2. adding dates that automatically attempt to reserve from dateA to B without going out of calender.
    * 3.implement this in javascript
    * 4.find ways to cancel reservation OK?
    * */

    public static void main(String[] args) {


        Hotel.Rooms.Room rt = new Hotel.Rooms.Single();


        //didnt need 3 obj.  need 3 tables.
        //need loop that generate a availability test that goes from one room to the other.


        //  rt.reserve(20141122,20141128,101);


        //  rt.reserve(20141125,20141127,102);

        //  rt.reserve(20141118,20141119,103);

        //  rt.reserve(20141109,20141110,103);

        // rt.reserve(20141118,20141119,102);

        Double dt = new Double();
        Suite st = new Suite();


        ConvertToInt ct = new ConvertToInt();
        Date d = new Date(2014, 7, 9);
        System.out.print(ct.toInt(d));


        // dt.reserve(20141122,20141123,202);


    }
}
