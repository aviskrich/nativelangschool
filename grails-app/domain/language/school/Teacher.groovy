package language.school

import org.bson.types.ObjectId

class Teacher {

    ObjectId id;
    String firstName;
    String lastName;
    List<Event> eventList;


    static constraints = {
    }
}
