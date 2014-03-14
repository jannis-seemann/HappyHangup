package happyHangup

class Event {
    String name;
    Date timestamp;
    String locationAddress;
    String locationLong;
    String locationLat;


    static constraints = {
        name(nullable: true)
        timestamp(nullable: true)
        locationAddress(nullable: true)
        locationLong(nullable: true)
        locationLat(nullable: true)

    }

    static belongsTo = [
            user: Organizer,
            category: Category
    ]

    public String toString() {
        return this.name
    }
}
