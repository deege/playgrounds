/* This playground enumerates the different types of for loops */

import Cocoa

// 1 to 3 not including 3
for i in 1..3 {
    println("Looping \(i)")
}

// 1 to 3 including 3
for i in 1...3 {
    println("Looping again \(i)")
}

// 1 to 5 in a list of numbers
let i = 1..5
for j in i {
    println("Looping over a list of numbers \(j)")
    if j == 3 {
        break
    }
}

// Old school for-loop
for var i=0; i<5; i++ {
    println("Old school looping \(i)")
}

// iterate over array of strings
let s = ["Larry", "Curly", "Moe"]
for h in s {
    println("Looping in an array of strings " + h)
}

//s.map(println)

//var numbers = [1, 3, 5, 7]
//numbers.map(println)

// iterate over an array of strings with indexes
for (index, value) in enumerate(s) {
    println("Item \(index + 1): \(value)")
}

// iterate over a dictionary
var games = ["Pong":"Atari", "PacMan":"Namco"]
for (game, company) in games {
    println("\(game) - \(company)")
}

// Simple for-loop without using a index
for _ in 1...6 {
    println("Looping without an index")
}

// Iterate over characters in a string
for character in "Albuquerque" {
    println(character)
}

// while loop
var index = 0
while index < 10 {
    println("Looping in a while loop")
    index++
}

// do while loop
index = 0
do {
    println("Looping in a do while loop")
    index++
} while index < 5
