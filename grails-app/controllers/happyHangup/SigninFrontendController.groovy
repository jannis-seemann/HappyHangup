package happyHangup

class SigninFrontendController {

    def index() {
        respond Category.findAll()
    }
}
