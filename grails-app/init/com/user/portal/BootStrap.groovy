package online.user.portal

import com.user.portal.AppInitializationService

class BootStrap {

    def init = { servletContext ->
        AppInitializationService.initialize()
    }

    def destroy = {
    }
}
