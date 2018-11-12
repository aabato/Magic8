import UIKit
/********************
    Walk Through
********************/
// Exercise 1: What happens if you try to reassign a `let` variable?
let value = "Hello"
//value = "What's up" causes error

// Exercise 2: What happens if you divide myInteger with 2?
let myInteger: Int = 1
myInteger/2 // returns 0

// Exercise 3: Print out a string that says "Hello, world!"
let str = "Hello, world!"
print(str)

// Exercise 4: Create an array that includes several countries and print it.
let arrOfCountries = ["United States", "France", "Philippines"]
print(arrOfCountries)

// Exercise 5: Print out the number of items in your array from Exercise 4
print(arrOfCountries.count)

// Exercise 6: Use a for-loop to print out "Hello, __!" for each place in your array from Exercise 4
for country in arrOfCountries {
    print("Hello, \(country)")
}

// Exercise 7: Create a function that takes an array of places and returns "Hello, ___!", filling the blank with a random element of the given array.
func randomHello(with array: [String]) -> String {
    return "Hello, \(array.randomElement())!"
}
print(randomHello(with: arrOfCountries))

// To make it fancier, pass two arguments: the array of places and a boolean. The boolean will determine if the the string returned will say "Good Morning, ___" or "Good Evening, __ ".
func randomGreeting(with array: [String], _ isDaytime: Bool) -> String {
    var greeting = "Good Evening, "
    if isDaytime {
        greeting = "Good Morning, "
    }
    
    return greeting + (array.randomElement() ?? "")
}
print(randomGreeting(with: arrOfCountries, true))

/**************************
    Extra exercises
***************************/


//Create a dictionary where the keys are countries, and the values are arrays of cities that are in it's corresponding country.
// i.e. key France would have a value of [Paris, Versailles]
let countriesAndCities: [String: [String]] = ["United States": ["New York", "Los Angeles", "New Orleans"],
                          "France": ["Versailles", "Paris", "Lyon"],
                          "Philippines": ["Manila", "Boracay", "Cabanatuan"]]

//Use a for-loop to print out "Hello, ____!" for each city in each country in the dictionary
for cities in countriesAndCities.values {
    for city in cities {
        print("Hello, \(city)!")
    }
}

//Pretend arrays don't have a randomElement function available. Use Int.random(in:) to print out "Hello, __!" for a random place from your array in Exercise 4
//https://developer.apple.com/documentation/swift/int/2995648-random

let randomInt = Int.random(in: 0..<arrOfCountries.count)
print("Hello, \(arrOfCountries[randomInt])")
