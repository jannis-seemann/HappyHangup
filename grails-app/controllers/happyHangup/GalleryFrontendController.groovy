package happyHangup

class GalleryFrontendController {

    def index() {
        respond Category.findAll()
    }
}
