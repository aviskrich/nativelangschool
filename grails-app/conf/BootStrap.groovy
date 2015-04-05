import language.school.security.Role
import language.school.security.User
import language.school.security.UserRole

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
        def teacherRole = new Role(authority: 'Teacher').save(flush: true)

//        def grails = new Grails();
//        grails.setSomeName("name");
//        grails.save(flush: true);

        def testUser = new User(username: 'admin', password: 'admin').save(flush: true)
        def testUser1 = new User(username: 'adm', password: 'adm').save(flush: true)
        def testUser3 = new User(username: 'user', password: 'user').save(flush: true)
        def teacherUser = new User(username: 'teacher', password: 'teacher').save(flush: true)

        UserRole.create testUser, adminRole, true
        UserRole.create testUser1, adminRole, true
        UserRole.create testUser3, userRole, true
        UserRole.create teacherUser, teacherRole, true

//        assert User.count() == 4
//        assert Role.count() == 3
    }
    def destroy = {
    }
}
