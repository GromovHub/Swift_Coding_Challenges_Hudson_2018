//
//  Challenge9.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 06.01.2024.
//

import Foundation

func challenge9(str: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var result = false
    for i in alphabet {
        if str.lowercased().contains(i) {
            result = true
        } else {
            result = false
            break
        }
    }
    return result
}

func challenge9p2(str: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    return Array(Set(str.lowercased())).filter { $0 != " " }.sorted().reduce("") { $0 + "\($1)"} == alphabet
}

func challenge9p3(str: String) -> Bool {
    Set(str.lowercased()).filter { $0 != " "}.count == 26
}

func testChallenge9() {
    assert(challenge9(str: "The quick brown fox jumps over the lazy dog") == true)
    assert(challenge9(str: "The quick brown fox jumped over the lazy dog") == false)
    
    assert(challenge9p2(str: "The quick brown fox jumps over the lazy dog") == true)
    assert(challenge9p2(str: "The quick brown fox jumped over the lazy dog") == false)    
    
    assert(challenge9p3(str: "The quick brown fox jumps over the lazy dog") == true)
    assert(challenge9p3(str: "The quick brown fox jumped over the lazy dog") == false)
}
