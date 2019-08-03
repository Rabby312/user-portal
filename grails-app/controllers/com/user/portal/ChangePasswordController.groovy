package com.user.portal

class ChangePasswordController {
    AuthenticationService cAuthenticationService  = new AuthenticationService()

    def index() {

        def response =  cAuthenticationService.getMember()

        [member: response]
    }
}
