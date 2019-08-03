package com.user.portal

class Member {

    Integer id
    String firstName
    String lastName
    String address
    String phone
    String email
    String password
    String memberType = GlobalConfig.USER_TYPE.REGULAR_MEMBER
    String identityHash
    Long identityHashLastUpdate
    Boolean isActive = true

    Date dateCreated
    Date lastUpdated

    static constraints = {
        email(nullable: false, unique: true, blank: false)
        password(blank: false)
        lastName(nullable: true)
        identityHash(nullable: true)
        identityHashLastUpdate(nullable: true)
    }

    def beforeInsert (){
        this.password = this.password.encodeAsMD5()
    }


    def beforeUpdate(){
        this.password = this.password.encodeAsMD5()
    }

}
