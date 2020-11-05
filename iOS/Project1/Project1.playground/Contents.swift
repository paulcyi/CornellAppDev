/**
 * Project 1
 * Due: Sunday 9/27 @ 11:59 PM
 * Name & NetID:
 *
 * Please look on the course website (https://ios-course.cornellappdev.com/cheat-sheets/submitting-your-projects) for directions on how to submit (ie. name your project 1 file netid_p1.playground and zip it as netid_p1.zip)
 *
 * Project Goal: Become familiar with Swift syntax and basic Swift features.
 * PLEASE READ ALL PARTS CAREFULLY! THERE ARE A TOTAL OF 10 PARTS TO COMPLETE.
 *
 */

// Part 1
//
// For this part, you will use the custom task class (note that it's a class because of the init
// function). CustomStringConvertible and the variable "description" are used for printing.

class Task: CustomStringConvertible {
    var title: String

    init(title: String) {
        self.title = title
    }

    var description: String {
        return title
    }
}

// Part 1.1
//
// Try and append a Task to the tasks array. What happens and why? Answer in a comment below.
// Hint: What is the difference between let and var variables? Fix the error.

var tasks = [Task(title: "Read Grading and Project FAQs page on the website"), Task(title: "Read cheat sheet on how to submit your project to CMS on the website"), Task(title: "Complete project 1")]

tasks.append(Task(title: "Read Hacking with Swift"))

// Since the array [tasks] is a constant it is immutable.



// Part 1.2
//
// Add a Task with the title "Submit Project 1" to the tasks array above.

tasks.append(Task(title: "Submit Project 1"))


// Part 1.3
//
// Now, please complete the first two tasks from the tasks array.
// Once you have completed them, please remove them from the tasks array.

tasks.remove(at: 1)
tasks.remove(at: 2)

print(tasks)


// Part 1.4
//
// Edit the task title in the tasks array titled "Submit project 1" to "Submit project 1 to CMS"
// in two lines by:
// 1) accessing the tasks array item and setting it to a new Task variable, (ex. var newTask = ...)
// 2) changing that variable's title.
//
// Do NOT create a new task object.
// Print the tasks array to ensure that you changed tasks.


// 1)
var newTask = "Submit project 1 to CMS"
// 2)
tasks[2] = Task(title: newTask)

print(tasks)


// Part 1.5
//
// Now this is where it gets ~interesting~. Change the Task class to a struct by replacing the
// class keyword to struct above in part 1. Run your playground again. In part 1.4, is the
// submission task updated or does it show the old "Submit project 1" text?
//
// Why does this happen? Answer in a comment below.
// Hint: what is the difference between class and struct?
//
// Don't forget to change the Task struct back to a class when you're done!

// The submission task is updated because it is a struct. This means that assigning one struct instance to another creates a distinct copy of the struct and the two instances point to two DIFFERENT objects.


// Part 2
//
//

// Part 2.1
//
// Create an enum called Grade. Grade should have 5 values:
// - freshman
// - sophomore
// - junior
// - senior
// - grad

enum Grade {
   case freshman, sophomore, junior, senior, grad
}

// Part 2.2
//
// Create a class called Student. The class should have the following fields:
// - name (of type String)
// - yearOfGraduation (of type Int)
// - grade (of type enum Grade, from part 2.1)
// The initializer for Student should consist of all three fields.
//
// Note: Notice how the class name (Student) is capitalized, but the fields are in camelCase
// (first letter lowercase, subsequent words upperCased, like yearOfGraduation).
// This is a coding convention you should follow in Swift because it keeps your code and
// variables readable.
//
// When you have finished creating this class, test your code by uncommenting the block of code
// below. The shortcut to do this is to highlight the block of code you want to uncomment and
// press cmd + forward slash (/). Run the playground with this code.
// The test cases should not throw an error.

class Student {
   var name: String
   var yearOfGraduation: Int
   var grade: Grade
   
   init(name: String, yearOfGraduation: Int, grade: Grade) {
      self.name = name
      self.yearOfGraduation = yearOfGraduation
      self.grade = grade
   }
   
   func studentDescription(student: Student, description: String) {
      
   }
}




// UNCOMMENT THIS CODE WHEN DONE WITH PART 2.2
func testPart22(student: Student, name: String, yearOfGraduation: Int, grade: Grade) {
    assert(student.name == name)
    assert(student.yearOfGraduation == yearOfGraduation)
    assert(student.grade == grade)
}

let kanye = Student(name: "Kanye West", yearOfGraduation: 2019, grade: .senior)
let kim = Student(name: "Kim Kardashian", yearOfGraduation: 2020, grade: .junior)
let travis = Student(name: "Travis Scott", yearOfGraduation: 2021, grade: .sophomore)
let kylie = Student(name: "Kylie Jenner", yearOfGraduation: 2022, grade: .freshman)
let khloe = Student(name: "Khloe Kardashian", yearOfGraduation: 2019, grade: .senior)

testPart22(student: kanye, name: "Kanye West", yearOfGraduation: 2019, grade: .senior)
testPart22(student: kim, name: "Kim Kardashian", yearOfGraduation: 2020, grade: .junior)
testPart22(student: travis, name: "Travis Scott", yearOfGraduation: 2021, grade: .sophomore)
testPart22(student: kylie, name: "Kylie Jenner", yearOfGraduation: 2022, grade: .freshman)


// Part 2.3
//
// Add a function in the Student class called studentDescription that returns a String in the form
// "Hi! I am [name] and I graduate in [yearOfGraduation]. Right now I am a [grade].", where the
// name, year of graduation, and grade are the properties of that student.
//
// For this method, you should be using a switch/case statement.
// After you're done, uncomment the testing code and the functions should pass.
// Make sure that you match the student description format precisely (punctuation, spelling, capitalization, etc.)






// UNCOMMENT THIS CODE WHEN DONE WITH PART 2.3
//func testPart23(student: Student, description: String) {
//    assert(student.studentDescription() == description)
//}
//
//testPart23(student: kanye, description: "Hi! I am Kanye West and I graduate in 2019. Right now I am a senior.")
//testPart23(student: kylie, description: "Hi! I am Kylie Jenner and I graduate in 2022. Right now I am a freshman.")


// Part 2.4
//
// Now we're going to take a slight detour to talk about optionals, which are a very important
// language feature in Swift. Please read all of this because most students get confused by
// this concept when they first start learning Swift.
//
// You are most likely familiar with types in Java or Python.
// In Python, you can write
// num = 123
// and num will be of type int.
//
// Similarly in Java: int num = 123
//
// In Swift, you can have variables of type Int:

var num: Int = 123

// You can ALSO have types of OPTIONAL Int:

var optionalNum: Int? = 123
//
// You can think of optionals as a wrapper around a type that describes whether or not a value of
// that type exists, or nothing at all (called nil in Swift).
//
// In this case, optionalNum is like a box: there might be an Int in the box, or there could be nil.
// Right now, we know that optionalNum contains a value 123, but we can easily replace it with
// nothing:

optionalNum = nil

//Now you might be wondering why do we need this box abstraction?
// Well the real power of Optionals comes in the form of Optional chaining.
// Optional chaining is a way to call methods and class properties that might return Optionals—-
// all in one line!
//
// For example, pretend we add the optional property laptop of type Computer to the Developer class.
// Pretend that Computer is a class which has a method getModelNum that returns the computer's model:

struct Computer {
    var make: String
    var model: Int

    func getModelNum() -> Int {
        return model
    }
}

class Developer {
    var laptop: Computer?
}

// What if you had a developer and wanted to get the laptop model number but you weren't sure if the
// developer has a laptop or not? If you have not been enlightened by the power of Optionals, you
// might try and write something like this:

let developer = Developer()

// if developer != nil {
//    let laptopNum = developer.laptop.getModelNum()
// }

// In Swift, this actually won't work because laptop property of the Student class is an Optional,
// but that's the gist of how a non-Optional programmer might write this logic.

// However, with Swift we can actually write this all in one line!

var laptopNum = developer.laptop?.getModelNum()

// Basically what this line of code is saying is that if the student has a laptop, get the model
// number. If the developer does not have a laptop (i.e. laptop = nil), return nil to laptopNum.
// The type of laptopNum is then optional Int, or Int?, because there may or may not be a laptop
// number associated with the developer.
//
// The power of Optional chaining comes from the fact that you as a Swift programmer will not have
// to write tons of if statments when using Optionals, but rather be able to chain Optionals
// together (through the ?) to get the value you really want.
//
// You can think of the ? as asking the program, "Do you have a value? If not, I'll stop right here
// and return nil. If so, I'll keep going down the chain".
//
// Usually you want to use the value in the Optional and not just have an Int? or a Computer?.
// if let is a special keyword in Swift that allows you do just that. For example, say you had an
// optional int called anOptionalInt, and you wanted to use the value inside anOptionalInt if there
// is one.
//
// To get the int out of an optional int you would do:

var anOptionalInt: Int? = 5
if let anUnwrappedInt = anOptionalInt {
    print("The value wrapped in the optional int is: \(anUnwrappedInt)")
}

// If anOptionalInt has a value, the code inside the if let would run and you would see a print
// statement on your console. If you set anOptionalInt to nil, the print statement will not appear.
// Try it out for yourself!
//
// There's also quick—-but unsafe way--to unwrap an Optional. If you are sure an optional contains a
// value you can use ! to "force" the value out. For example, if you knew anOptionalInt has a value
// inside it, you could forgo the if let and write:

print("The value wrapped in the optional int is: \(anOptionalInt!)")

// The above statement will crash if you set anOptionalInt to nil because there's nothing there to
// print. If you set anOptionalInt to an integer, it will print okay. Try and understand why this
// might happen.
//
// Using ! is called force unwrapping, and if you don't actually have a value you could cause an
// "Unexpectedly found nil" error. Bottom line: if you use !, you NEED to ensure you will
// have the value inside the Optional when you use it. Otherwise, have fun debugging nil errors :(
//
// Yay, now you're done with reading! Now for the problem:
// - Create an variable called optStudent of type Student.
// - Assign optStudent a nil value.
// - Write an if let that binds the student's description to a variable called description. Inside the if let print out description. What happens? Now instead of nil, assign optStudent to an actual student. Run your playground. What happens? Answer in a comment below.
// - Now, instead of nil, assign optStudent to an actual student. What happens and why? Answer in a comment below.

var optStudent: Student? = nil

if let unwrappedStudent = optStudent {
   
}


// Part 2.5
//
// Create a function called createYearDictionary that takes in an array of Student objects
// (argument name students) and returns a dictionary that maps year of graduation to an array of
// student names that graduate in that year.
//
// Example: createYearDictionary(kanye, kim, travis, kylie, khloe) would output
// [2019: ["Kanye West", "Khloe Kardashian"], 2020: ["Kim Kardashian"], 2021: ["Travis Scott"], 2022: ["Kylie Jenner"]]
//
// When you're done, uncomment the code block below and ensure that the test cases pass.
//
// Hint: What should the return type be? Remember that the type of a dictionary is
// [TypeA: TypeB], where TypeA and TypeB could be String, Int, Bool, String arrays, etc.


func createYearDictionary(students: [Student]) {
   
}




// UNCOMMENT THIS CODE WHEN DONE WITH PART 2.5
//let yearDictionary = createYearDictionary(students: [kanye, kim, travis, kylie, khloe])
//
//func testPart25(student: Student, yearDictionary: [Int: [String]]) {
//    if let names = yearDictionary[student.yearOfGraduation] {
//        assert(names.contains(student.name))
//    } else {
//        assert(false)
//    }
//}
//
//testPart25(student: kim, yearDictionary: yearDictionary)
//testPart25(student: kanye, yearDictionary: yearDictionary)
//testPart25(student: travis, yearDictionary: yearDictionary)
//testPart25(student: kylie, yearDictionary: yearDictionary)
//testPart25(student: khloe, yearDictionary: yearDictionary)

// Congrats! You've finished project 1 :) Remember to submit following the correct format!
// If you choose to do the extra credit, please do it here:
