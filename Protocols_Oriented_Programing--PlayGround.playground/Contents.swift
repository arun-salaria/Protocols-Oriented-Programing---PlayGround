//Just a simple and basic example for POP

protocol Person {
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

extension Person {
    var isMinor :Bool {self is Student}
}

extension Student {
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

enum BestTeacher:Teacher {
    
    case arun
    case shubham
    
    var name:String {
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

BestTeacher.shubham.name
BestTeacher.arun.isMinor
let shivani = NonMedSutdent(numberOfSubjects: 5, name: "Shivani")
shivani.numberOfSubjects
shivani.isMinor
let rama = Tuitor(name: "Rama", subjectName: "Hindi")
rama.isMinor


