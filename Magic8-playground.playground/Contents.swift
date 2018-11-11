import UIKit

//This is a string!
var str = "Hello, playground"

//Create a string that says "Hello, world!"
let world = "Hello, world!"

//Create an array that includes several places (You pick the places!)
let arrayOfPlaces = ["New York", "Tokyo", "Barcelona", "Los Angeles", "Berlin"]

//Use a for-loop that uses print() to print out "Hello, __!" for each place in your array

//Option 1
for place in arrayOfPlaces {
    print("Hello, " + place + "!")
}

//Option 2
for i in 0..<arrayOfPlaces.count {
    print("Hello, " + arrayOfPlaces[i] + "!")
}

//Option 3
for place in arrayOfPlaces {
    print("Hello, \(place)!")
}

//Use Int.random(in:) to print out "Hello, __!" for a random place from your array
let randomInt = Int.random(in: 0..<arrayOfPlaces.count)
print("Hello, \(arrayOfPlaces[randomInt])!")
