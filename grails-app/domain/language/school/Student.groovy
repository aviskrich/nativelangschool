package language.school

import org.bson.types.ObjectId

class Student {

    ObjectId id;
    String firstName;
    String lastName;
    List<Event> eventList;

    static constraints = {
    }
}
