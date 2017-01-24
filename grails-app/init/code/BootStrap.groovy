package code

import com.code.Address
import com.code.Profile
import grails.converters.JSON
import grails.converters.XML

class BootStrap {

    def init = { servletContext ->

        Profile p1 = Profile.findOrSaveByFullNameAndMobileNo('Prabhat Kashyap', '1111111111')
        Profile p2 = Profile.findOrSaveByFullNameAndMobileNo('Ritesh Kumar', '2222222222')
        Profile p3 = Profile.findOrSaveByFullNameAndMobileNo('Nupur Dhawan', '3333333333')

        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 11", "City 11", "State 11", p1)
        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 12", "City 12", "State 12", p1)
        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 13", "City 13", "State 13", p1)
        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 14", "City 14", "State 14", p1)

        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 21", "City 21", "State 21", p2)
        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 22", "City 22", "State 22", p2)
        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 23", "City 23", "State 23", p2)
        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 24", "City 24", "State 24", p2)

        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 31", "City 31", "State 31", p3)
        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 32", "City 32", "State 32", p3)
        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 33", "City 33", "State 33", p3)
        Address.findOrSaveByStreetAddressAndCityAndStateAndProfile("Street Address 34", "City 34", "State 34", p3)


        println("///////Started Bootstrap//////")
        println("////////////////Started Marshalling//////")
        JSON.registerObjectMarshaller(Profile) {
            def returnArray = [:]
            returnArray['fullName'] = it.fullName
            returnArray['mobileNo'] = it.mobileNo
            returnArray['addresses'] = it.addresses
            return returnArray
        }

        JSON.registerObjectMarshaller(Address) {
            def returnArray = [:]
            returnArray['id'] = it.id
            returnArray['streetAddress'] = it.streetAddress
            returnArray['city'] = it.city
            returnArray['state'] = it.state
            return returnArray
        }
        XML.registerObjectMarshaller(Profile) { Profile profile, converter ->
            converter.build {
                id profile?.id
                fullName profile?.fullName
                mobileNo profile?.mobileNo
                addresses([]) {
                    profile?.addresses?.each { Address address ->
                        id address?.id
                        streetAddress address?.streetAddress
                        city address?.city
                        state address?.state
                    }
                }
            }

        }
        XML.registerObjectMarshaller(Address) { Address address, converter ->
            converter.build {
                id address?.id
            }
        }
        println("///////End  Bootstrap//////")
    }
    def destroy = {
    }
}
