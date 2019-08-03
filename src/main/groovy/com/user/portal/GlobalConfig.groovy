package com.user.portal

class GlobalConfig {

    public static final def USER_TYPE = [
            ADMINISTRATOR: "ADMINISTRATOR",
            REGULAR_MEMBER: "REGULAR_MEMBER",
    ]


    public static Integer itemsPerPage() {
        return 5
    }
}
