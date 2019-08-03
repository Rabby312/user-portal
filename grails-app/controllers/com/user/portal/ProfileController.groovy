package com.user.portal

class ProfileController {

    AuthenticationService mAuthenticationService  = new AuthenticationService()

    def index() {

        def response =  mAuthenticationService.getMember()

        [member: response]
    }

}
