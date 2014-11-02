package Hotel;

/**
 * Created by abner on 11/1/14.
 */
public class Suite extends Room {
    public Suite() {
        this.setRoomRates((float) 129.99);
        setMaxPeople(10);  //for the meantime
        setRoomType("Suite");
    }
}
