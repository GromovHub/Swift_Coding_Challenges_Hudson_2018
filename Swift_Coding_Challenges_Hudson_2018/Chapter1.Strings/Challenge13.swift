//
//  Project name: Swift_Coding_Challenges_Hudson_2018
//  File name: Challenge13.swift
//
//  Copyright © Gromov V.O., 2024
//


//Challenge 13: Run-length encoding
//Difficulty: Taxing
//Write a function that accepts a string as input, then returns how often each letter is repeated in
//a single run, taking case into account.
//Tip: This approach is used in a simple lossless compression technique called run-length
//encoding.
//Sample input and output
//• The string “aabbcc” should return “a2b2c2”.
//• The strings “aaabaaabaaa” should return “a3b1a3b1a3”
//• The string “aaAAaa” should return “a2A2a2”

func challenge13(_ str: String) -> String {
    var result: String = ""
    var lastChar: Character = " "
    var count = 0
    for i in str {
        if result.isEmpty {
            result += "-"
            lastChar = i
            count += 1
        } else if lastChar == i {
            count += 1
        } else {
            result += "\(lastChar)\(count)"
            lastChar = i
            count = 1
        }
    }
    result += "\(lastChar)\(count)"
    return String(result.dropFirst())
}

func testChallenge13() {
    let test1 = challenge13("aabbcc")
    let test2 = challenge13("aaabaaabaaa")
    let test3 = challenge13("aaAAaa")
    
    test1 == "a2b2c2" ? print("+") : print("-")
    test2 == "a3b1a3b1a3" ? print("+") : print("-")
    test3 == "a2A2a2" ? print("+") : print("-")
    

}
