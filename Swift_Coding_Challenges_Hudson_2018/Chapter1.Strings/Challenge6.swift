//
//  Challenge6.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 05.01.2024.
//

import Foundation

func challenge6(str: String) -> String {
    var result: [Character] = []
    
    for i in str {
        if !result.contains(i) {
            result.append(i)
        }
    }
    return result.reduce("") {
        $0 + String($1)
    }
}

func challenge6p2(str: String) -> String {
    str.reduce("") {
        !$0.contains($1) ? $0 + String($1) : $0
    }
    
}


func testChallenge6() {
    assert(challenge6(str: "wombat") == "wombat")
    assert(challenge6(str: "hello") == "helo")
    assert(challenge6(str: "Mississippi") == "Misp")
    
    assert(challenge6p2(str: "wombat") == "wombat")
    assert(challenge6p2(str: "hello") == "helo")
    assert(challenge6p2(str: "Mississippi") == "Misp")
}
