package com.user.portal


class MemberInterceptor {

    AuthenticationService authenticationService

    boolean before() {
        if (authenticationService.isAdministratorMember()){
            return true
        }
        flash.message = AppUtil.infoMessage("You are not Authorized for this Action.", false)
        redirect(controller: "dashboard", action: "index")
        return false
    }
}
