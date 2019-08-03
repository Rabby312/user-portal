package com.user.portal

class AuthenticationController {

    AuthenticationService authenticationService
    MemberService memberService

    def login() {
        if (authenticationService.isAuthenticated()) {
            if(authenticationService.isAdministratorMember())
                redirect(controller: "member", action: "index")
            else
                redirect(controller: "profile", action: "index")
        }
    }

    def doLogin() {
        if (authenticationService.doLogin(params.email, params.password)) {
            if(authenticationService.isAdministratorMember())
                redirect(controller: "member", action: "index")
            else
                redirect(controller: "profile", action: "index")
        } else {
            flash.message = AppUtil.infoMessage("Email Address or Password not Valid.", false)
            redirect(controller: "authentication", action: "login")
        }
    }


    def logout() {
        session.invalidate()
        redirect(controller: "authentication", action: "login")
    }

    def registration() {
        [member: flash.redirectParams]
    }
    def changePassword(){
        if(authenticationService.isAdministratorMember()){
            redirect(controller: "changePassword", action: "index")
    }
    }


    def doRegistration() {
        def response = memberService.save(params)
        if (response.isSuccess) {
            authenticationService.setMemberAuthorization(response.model)
            if(authenticationService.isAdministratorMember())
                redirect(controller: "member", action: "index")
            else
                redirect(controller: "profile", action: "index")
        } else {
            flash.redirectParams = response.model
            redirect(controller: "authentication", action: "registration")
        }
    }

}
