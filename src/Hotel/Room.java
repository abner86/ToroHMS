package Hotel;

/**
 * Created by kosu on 11/1/2014.
 */
abstract class Room {
    int roomNumber;
    String roomType;
    float rates;
    int maxNumOfPeople;
//    int[][][] dates = new int[10][10][10];
    //   int resize_factor=10;

    float getPrice() {
        return rates;
    }

    void setRoomRates(float newRates) {
        rates = newRates;
    }

    void setRoomType(String rType) {
        roomType = rType;
    }

    void setMaxPeople(int max) {
        maxNumOfPeople = max;
    }

    String getRoomType() {
        return roomType;
    }
//    void Resevation()
    //   {
    //     if(dates.length == resize_factor-2 )
    //    {
    //         int[][][] temp = new int[resize_factor+10][resize_factor+10][resize_factor+10];
    //       for(int i=0; i<resize_factor; i++)
    //     {
    //       temp[i][i][i]= dates[i][i][i];
    //    }
    //      dates=temp;
    //
    // }
    // }

}

