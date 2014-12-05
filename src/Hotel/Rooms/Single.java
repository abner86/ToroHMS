package Hotel.Rooms;

/**
 * Created by kosu on 11/20/2014.
 */
public class Single extends Hotel.Rooms.Room {

    // static int roomCounter=101;
    String x="";

    public Single(int x) {
        this.setRoomRates((float) 69.99);
        setMaxPeople(2);
        setRoomType("Single");
        setRoomNumber(101);
        addTable(getRNString());
        setRoomNumber(102);
        addTable(getRNString());
        setRoomNumber(103);
        addTable(getRNString());
        // roomCounter++;

    }
}

