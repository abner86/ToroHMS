package Hotel.Rooms;
/**
 * Created by kosu on 12/4/2014.
 */
public class Suite extends Room {

    public Suite(){

        this.setRoomRates((float) 129.99);
        setMaxPeople(10);
        setRoomType("Suite");
        setRoomNumber(301);
        addTable(getRNString());
        setRoomNumber(302);
        addTable(getRNString());
        setRoomNumber(303);
        addTable(getRNString());
        // roomCounter++;
    }
}