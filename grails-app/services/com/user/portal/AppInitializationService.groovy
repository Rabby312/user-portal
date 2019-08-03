package com.user.portal


class AppInitializationService {

    static initialize() {
        initMember()
    }

    private static initMember() {
        if (Member.count() == 0) {
            Member member = new Member()
            member.firstName = "System"
            member.lastName = "Administrator"
            member.address = "Dhaka"
            member.phone = "01933253615"
            member.email = "admin@localhost.local"
            member.password = "admin"
            member.memberType = GlobalConfig.USER_TYPE.ADMINISTRATOR
            member.save(flash: true)
        }
    }
}
