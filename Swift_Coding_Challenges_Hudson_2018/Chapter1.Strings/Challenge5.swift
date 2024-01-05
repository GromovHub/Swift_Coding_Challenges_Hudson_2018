//
//  Challenge5.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 05.01.2024.
//

import Foundation

func challenge5(str: String, letter: Character) -> Int{
    var counter = 0
    _ = str.map { char in
        counter += char == letter ? 1 : 0
    }
    return counter
}

func challenge5p2(str: String, letter: Character) -> Int {
    let countedSet = NSCountedSet(array: Array(str))
    return countedSet.count(for: letter)
}

func challenge5p3(str: String, letter: Character) -> Int {
    return str.reduce(0) {
        $1 == letter ? $0 + 1 : $0
    }
}

func testChallenge5() {
    assert(challenge5(str: "The rain in Spain", letter: "a") == 2)
    assert(challenge5(str: "Mississippi", letter: "i") == 4)
    assert(challenge5(str: "Hacking with Swift", letter: "i") == 3)
    
    assert(challenge5p2(str: "The rain in Spain", letter: "a") == 2)
    assert(challenge5p2(str: "Mississippi", letter: "i") == 4)
    assert(challenge5p2(str: "Hacking with Swift", letter: "i") == 3)
    
    assert(challenge5p3(str: "The rain in Spain", letter: "a") == 2)
    assert(challenge5p3(str: "Mississippi", letter: "i") == 4)
    assert(challenge5p3(str: "Hacking with Swift", letter: "i") == 3)
}


