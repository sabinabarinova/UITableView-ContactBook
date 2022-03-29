

import Foundation
struct PeopleInfo {
    var personNumber = 0
    var contacts = [
        people(
            personName: "Andy",
            phoneNumber: "+7 700 777 77 77"
        ),
        people(
            personName: "Bob",
            phoneNumber: "+7 700 777 00 00"
        ),
        people(
            personName: "Caroline",
            phoneNumber: "+7 700 777 11 11"
        ),
        people(
            personName: "Dan",
            phoneNumber: "+7 700 777 22 22"
        ),
        people(
            personName: "Elena",
            phoneNumber: "+7 700 777 33 33"
        ),
        people(
            personName: "Finn",
            phoneNumber: "+7 700 777 44 44"
        ),
        people(
            personName: "George",
            phoneNumber: "+7 700 777 55 55"
        ),
        people(
            personName: "Hailey",
            phoneNumber: "+7 700 777 66 66"
        ),
        people(
            personName: "Ian",
            phoneNumber: "+7 700 777 88 88"
        ),
        people(
            personName: "Jack",
            phoneNumber: "+7 700 111 11 11"
        )
        
    ]
    
    func getName(number: Int) -> String {
        return contacts[number].name
    }
    
    func getNumber(number: Int) -> String {
        return contacts[number].Number
    }
    

    
}
