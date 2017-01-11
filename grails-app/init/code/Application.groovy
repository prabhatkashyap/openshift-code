package code

import grails.boot.GrailsApp
import grails.boot.config.GrailsAutoConfiguration

class Application extends GrailsAutoConfiguration {
    static void main(String[] args) {
        println("////Application////")
        GrailsApp.run(Application, args)
    }
}