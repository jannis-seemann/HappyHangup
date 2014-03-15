package happyHangup

class CategoryFrontendController {

    def index() {
        respond Category.findAll()
    }
}
