//
//  Challenge7.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 06.01.2024.
//

import Foundation

func challenge7(str: String) -> String {
    str.reduce("") {
        if $1 == " " && $0.last == " " {
          return $0
        } else {
            return $0 + "\($1)"
        }
    }
}

//func challenge7p2(str: String) -> String {
//    str.components(separatedBy: .whitespacesAndNewlines).filter({$0 != ""}).joined(separator: " ")
//}

func challenge7p3(str: String) -> String {
    str.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
}

func testChallenge7() {
    assert(challenge7(str: "a   b   c") == "a b c")
    assert(challenge7(str: "    a") == " a")
    assert(challenge7(str: "abc") == "abc")
    
//    assert(challenge7p2(str: "a   b   c") == "a b c")
//    assert(challenge7p2(str: "    a") == " a")
//    assert(challenge7p2(str: "abc") == "abc")
    
    assert(challenge7p3(str: "a   b   c") == "a b c")
    assert(challenge7p3(str: "    a") == " a")
    assert(challenge7p3(str: "abc") == "abc")
}
