package happyHangup

class InterestFrontendController {

    def index() {
        respond Category.findAll()
    }
}
