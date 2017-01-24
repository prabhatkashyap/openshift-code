package com.code

import grails.rest.Resource

// readOnly only allows on get request.
//@Resource(uri = '/profiles', readOnly = true, formats = ['json', 'xml'])
@Resource(uri = '/profiles', formats = ['json', 'xml'])
class Profile {

    String fullName
    String mobileNo

    static hasMany = [addresses: Address]

    static constraints = {
        fullName(nullable: false, blank: false)
        mobileNo(nullable: false, blank: false)
    }

//    def toXML(xml){
//        xml.build{
//            id(id)
//            fullName(fullName)
//            mobileNo(mobileNo)
//        }
//    }
}
