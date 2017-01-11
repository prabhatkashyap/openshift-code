package code

class BootStrap {

    def init = { servletContext ->
        println("///////Started Bootstrap//////")
        println("///////End Bootstrap//////")
    }
    def destroy = {
    }
}
