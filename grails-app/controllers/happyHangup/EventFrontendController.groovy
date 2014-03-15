package happyHangup

class EventFrontendController {

    def indexByCategoryId(Long categoryId) {
        def events = Category.findById(categoryId)?.events
        respond events, model: [events: events]
    }

    def show(Long id) {
        def event = Event.findById(id)
        respond event, model: [event: event]
    }
}
