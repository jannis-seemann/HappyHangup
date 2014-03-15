package happyHangup

class StartPageFrontendController {

    def index() {
        respond Category.findAll()
    }
}
