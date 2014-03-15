package happyHangup

class SignupFrontendController {

    def index() {
        respond Category.findAll()
    }
}
