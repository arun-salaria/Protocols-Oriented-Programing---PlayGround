//Just a simple and basic example for POP

protocol Person {    // Base Protocol for Both Types Student and Teacher
    var name:String {get}
    var isMinor:Bool {get}
}

protocol Student:Person {
    var numberOfSubjects:Int{get}
    var completed10th:Bool{get}
}

protocol Teacher:Person {
    var subjectName:String{get}
}

extension Person {   // Shows the use of extension: If its type Student the isMinor is ture
    var isMinor :Bool {self is Student}
}

extension Student {  // Shows the use of extension: If its type NonMedSutdent the completed10th is ture
    var completed10th:Bool {self is NonMedSutdent}
}

struct Tuitor:Person,Teacher {
    var name: String
    var subjectName: String
    
}

struct NonMedSutdent :Student,Person {
    var numberOfSubjects: Int
    var name: String
}

enum BestTeacher:Teacher { // Shows the use of extension as Teacher
    
    case arun
    case shubham
    
    var name:String {   // Assigning value to Name and Subject depending upon the case
        switch self {
        case .arun:
            return "Arun"
        case .shubham:
            return "Shubham"
        }
    }
    var subjectName:String {
        switch self {
        case .arun:
            return "Maths"
        case .shubham:
            return "English"
        }
    }
    
}

BestTeacher.shubham.name        // by enum and protocol
BestTeacher.arun.isMinor        // by enum and protocol extension
let shivani = NonMedSutdent(numberOfSubjects: 5, name: "Shivani")
shivani.numberOfSubjects
shivani.isMinor                 // by protocol extension
let rama = Tuitor(name: "Rama", subjectName: "Hindi")
rama.isMinor


