package language.school.security

import grails.plugin.springsecurity.SpringSecurityService

class User {

	transient springSecurityService

	String username
	String password
    String email
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

    String getAuthoritiesAsString() {
        StringBuilder result = new StringBuilder()
        getAuthorities().each { result.append it.authority }
        result.toString()
    }

    def UserRole addAuthority(Role role) {
        new UserRole().with {
            user = this
            it.role = role
            it
        }.save()
    }

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}

    SpringSecurityService getSecrutiryService() {
        return springSecurityService
    }

    User getCurrentUserName() {
        springSecurityService.currentUser as User
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", enabled=" + enabled +
                ", accountExpired=" + accountExpired +
                ", accountLocked=" + accountLocked +
                ", passwordExpired=" + passwordExpired +
                ", version=" + version +
                '}';
    }
}
