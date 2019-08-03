package online.user.portal

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "profile", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
