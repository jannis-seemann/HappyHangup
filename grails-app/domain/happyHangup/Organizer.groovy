package happyHangup

class Organizer {
    String firstName;
    String lastName;
    String email;
    String companyName;

    static constraints = {
        email(nullable: true, email: true)
        firstName(nullable: true)
        lastName(nullable: true)
        companyName(nullable: true)

    }

    public String toString() {
        return this.firstName + " " + this.lastName;
    }
}
