package Hotel.Rooms;

import java.util.Date;

/**
 * Created by abner on 12/4/14.
 */
public class ConvertToInt {
    public static int yyyymmdd;
    public ConvertToInt()
    {
    }
    public static int toInt(Date d)
    {
        int d1 = d.getDate();
        int d2 = d.getMonth();
        int d3 = d.getYear();

        yyyymmdd=((d3*10000)+(d2*100)+d1);
        return yyyymmdd;
    }
}
