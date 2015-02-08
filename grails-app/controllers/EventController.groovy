import language.school.Event
import language.school.Student
import language.school.Teacher

class EventController {

    def index() { }

    def eventList() {
        List<Event> eventList = Event.list()

        return [eventList: eventList]
    }

    def newEvent(){
        List<Student> studentList = params.studentList;
        Teacher teacher = params.teacher;
        String eventName = params.eventName;
        Event event = new Event();


        event = bindData(event, params)
        redirect(action: "eventList")
    }

}
