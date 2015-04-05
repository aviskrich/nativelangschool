import grails.plugin.springsecurity.annotation.Secured
import language.school.security.Role
import language.school.security.User
import language.school.security.UserRole

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class RegisterController {

    def user = {
        def user = params.userId != null ? User.findById(Long.parseLong(params.userId as String)) : new User()

        return [user: user, newuser: params.newuser == null ? false : params.newuser]
    }

    def createUser() {
        redirect(action: "user", params: [newuser: true])
    }

    def saveUser() {
        User user = new User()

        user = bindData(user, params, ["id"])
        if ((params.password1 as String).size() > 0) {
            user.setPassword(params.password1)
        }
        user["email"] = params.email
        user = user.save()

        if (params.roles != null && params.roles != user.getAuthoritiesAsString()) {
            UserRole.removeAll(user)
            user.addAuthority(Role.findById(params.roles))
        }

        redirect(action: "userRegisterResult")
    }

    def userRegisterResult(){
    }

}
