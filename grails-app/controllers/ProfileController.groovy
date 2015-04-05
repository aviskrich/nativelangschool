import grails.plugin.springsecurity.annotation.Secured
import language.school.security.Role
import language.school.security.User
import language.school.security.UserRole

@Secured(['IS_AUTHENTICATED_FULLY','IS_AUTHENTICATED_REMEMBERED'])
class ProfileController {

    def springSecurityService

    def editProfile ={
        def user = springSecurityService.currentUser
        return [user: user]
    }

    def updateUser() {
        User user = User.get(params.userId)

        user = bindData(user, params, ["id"])
        if ((params.password1 as String).size() > 0) {
            user.setPassword(params.password1)
        }

        user = user.id != null ? user.merge() : user.save()

        if (params.roles != null && params.roles != user.getAuthoritiesAsString()) {
            UserRole.removeAll(user)
            user.addAuthority(Role.findById(params.roles))
        }

        redirect(uri:'/')
    }
}
