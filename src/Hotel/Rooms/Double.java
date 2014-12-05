package Hotel.Rooms;

/**
 * Created by abner on 12/4/14.
 */
/**
 * Created by kosu on 12/4/2014.
 */
public class Double extends Room {


    public Double() {
        this.setRoomRates((float) 99.99);
        setMaxPeople(4);
        setRoomType("Double");
        setRoomNumber(201);
        addTable(getRNString());
        setRoomNumber(202);
        addTable(getRNString());
        setRoomNumber(203);
        addTable(getRNString());
        // roomCounter++;

    }
}