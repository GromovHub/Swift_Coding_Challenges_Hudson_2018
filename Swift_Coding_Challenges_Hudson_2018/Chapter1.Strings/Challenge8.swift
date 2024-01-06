//
//  Challenge8.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 06.01.2024.
//

import Foundation

//func challenge8(str1: String, str2: String) -> Bool {
//    str1.sorted() == str2.sorted()
//}

func challenge8p2(str1: String, str2: String) -> Bool {
    (str2 + str2).contains(str1)
}

func testChallenge8() {
//    assert(challenge8(str1: "abcde", str2: "eabcd") == true)
//    assert(challenge8(str1: "abcde", str2: "cdeab") == true)
//    assert(challenge8(str1: "abcde", str2: "abced") == false)
//    assert(challenge8(str1: "abc", str2: "a") == false)
    
    assert(challenge8p2(str1: "abcde", str2: "eabcd") == true)
    assert(challenge8p2(str1: "abcde", str2: "cdeab") == true)
    assert(challenge8p2(str1: "abcde", str2: "abced") == false)
    assert(challenge8p2(str1: "abc", str2: "a") == false)
}
