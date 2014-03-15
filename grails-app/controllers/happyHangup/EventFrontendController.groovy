package happyHangup

class EventFrontendController {

    def indexByCategoryId(Long categoryId) {
        def category = Category.findById(categoryId)
        def events = category?.events
        respond events, model: [events: events, category: category]
    }

    def show(Long id) {
        def event = Event.findById(id)
        respond event, model: [event: event]
    }
}
