package com.code

import grails.rest.Resource
// readOnly only allows on get request.
//@Resource(uri = '/addresses', readOnly = true, formats = ['json', 'xml'])
@Resource(uri = '/addresses', formats = ['json', 'xml'])
class Address {

    String streetAddress
    String city
    String state

    static belongsTo = [profile: Profile]
    static constraints = {
        streetAddress(nullable: false, blank: false)
        city(nullable: false, blank: false)
        state(nullable: false, blank: false)
    }

//    def toXML(xml){
//        xml.build{
//            id(id)
//            streetAddress(streetAddress)
//            city(city)
//            state(state)
//        }
//    }
}
