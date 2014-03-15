package happyHangup

class OrganizerFrontendController {

    def index() {
        respond Category.findAll()
    }
}
