//
//  Challenge11.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 22.01.2024.
//

import Foundation

func challenge11(str1: String, str2: String) -> Bool {
    if str1.count != str2.count {
        return false
    }
    
    let str1Array = Array<Character>(str1)
    let str2Array = Array<Character>(str2)
    
    var counter = 0
    
    for i in 0..<str1.count {
        if str1Array[i] == str2Array[i] {
            counter += 1
        }
    }
    
    return counter >= str1.count - 3 ? true : false
}

func testChallenge11() {
    assert(challenge11(str1: "Clamp", str2: "Cramp") == true)
    assert(challenge11(str1: "Clamp", str2: "Crams") == true)
    assert(challenge11(str1: "Clamp", str2: "Grams") == true)
    assert(challenge11(str1: "Clamp", str2: "Grans") == false)
    assert(challenge11(str1: "Clamp", str2: "Clam") == false)
    assert(challenge11(str1: "clamp", str2: "maple") == false)
}
