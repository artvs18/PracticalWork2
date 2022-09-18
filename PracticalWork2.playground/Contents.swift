//Весь документ это "Main"

class Author {
    private let name: String
    private let email: String
    private let gender: Character
    
    init(name: String, email: String, gender: Character) {
        self.name = name
        self.email = email
        self.gender = gender
    }
    
    func showInfo() -> String {
        "\(name) (\(gender)) at \(email)"
    }
}

let toAuthor = Author(name: "Artemy", email: "wasartemwolf@gmail.com", gender: "M")

print(toAuthor.showInfo())


//Homework

class Pet {
    var name: String
    var color: String
    var weight: Int
    var age: Int
    
    init(name:String, color: String, weight: Int, age: Int) {
        self.name = name
        self.color = color
        self.weight = weight
        self.age = age
    }
}

class Dog: Pet {
    let breed: String
    let gender: String
    let isNeedToWalk: Bool
    let hasATail: Bool
    
    init(
        name:String,
        color: String,
        weight: Int,
        age: Int,
        breed: String,
        gender: String,
        isNeedToWalk: Bool,
        hasATail: Bool
    ) {
        self.breed = breed
        self.gender = gender
        self.isNeedToWalk = isNeedToWalk
        self.hasATail = hasATail
        super.init(name: name, color: color, weight: weight, age: age)
    }
    
    func showInfo() -> String {
        let genderOfADog = gender == "F" ? "girl" : "boy"
        let walk = isNeedToWalk ? "requiring walking" : "don't requiring walking"
        let tail = hasATail ? "with a tail" : "without a tail"
        return """
\(name) is a \(genderOfADog) dog of \(color) color, \(breed) breed weighing
\(weight) kilograms and \(age) years old \(tail), \(walk).
"""
    }
}

let dog = Dog(
    name: "Michelle",
    color: "beige",
    weight: 15,
    age: 2,
    breed: "French bulldog",
    gender: "F",
    isNeedToWalk: true,
    hasATail: false
)
print(dog.showInfo())
