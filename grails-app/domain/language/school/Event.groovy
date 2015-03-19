package language.school

import org.bson.types.ObjectId

class Event {

    ObjectId id;
    String name;
    Date timeBegin;
    Date timeEnd;



    static constraints = {
    }
}
