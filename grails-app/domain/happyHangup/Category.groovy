package happyHangup

class Category {
    String name;


    static constraints = {
        name(nullable: true)

    }

    static hasMany = [
            events: Event
    ]


    public String toString() {
        return this.name
    }
}
