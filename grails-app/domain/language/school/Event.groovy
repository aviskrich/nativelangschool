package language.school

import language.school.security.User
import org.bson.types.ObjectId

class Event {

    static constraints = {
    }

    static mapWith = "mongo"

    ObjectId id;
    String name;
    String description;
    String author;
    Date fromTime;
    Date toTime;
    List<User> students;
}
