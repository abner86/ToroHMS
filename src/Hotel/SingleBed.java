package Hotel;

/**
 * Created by abner on 11/1/14.
 */
public class SingleBed extends Room {
    public SingleBed() {
        this.setRoomRates((float) 69.99);
        setMaxPeople(2);
        setRoomType("Single");
    }
}
