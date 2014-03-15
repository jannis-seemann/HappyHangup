package happyHangup

class DeveloperFrontendController {

    def index() {
        respond Category.findAll()
    }
}
