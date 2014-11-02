package Hotel;

/**
 * Created by kosu on 11/1/2014.
 */
public class DoubleBed extends Room {

    public DoubleBed() {
        this.setRoomRates((float) 89.99);
        setMaxPeople(4);  // no need minimum limits
        setRoomType("Double");
    }
}