//
//  Challenge10.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 06.01.2024.
//

import Foundation

func challenge10(str: String) -> (Int, Int) {
    var vowels = 0
    var consonants = 0
    for i in str.lowercased().replacingOccurrences(of: " ", with: "") {
        if "aeiou".contains(i) {
            vowels += 1
        } else {
            consonants += 1
        }
    }
    return (vowels,consonants)
}

func testChallenge10() {
    assert(challenge10(str: "Swift Coding Challenges") == (6,15))
    assert(challenge10(str: "Mississippi") == (4,7))
//    assert(challenge10(str: "Vitaly") != nil)
}
