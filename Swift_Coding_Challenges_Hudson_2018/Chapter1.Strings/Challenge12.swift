//
//  Project name: Swift_Coding_Challenges_Hudson_2018
//  File name: Challenge12.swift
//
//  Copyright © Gromov V.O., 2024
//


import Foundation

func testChallenge12() {
//    let args = ["swift switch swill swim", "flip flap flop"]
    let args2 = [("swift switch swill swim","swi"), ("flip flap flop", "fl")]
    
    for i in args2 {
        func1(arg: i.0) == i.1 ? print("success") : print("fail")
    }
}

func func1(arg: String) -> String {
    var result = ""
    var offset = 1
    var gotIt = false
    let words = arg.split(separator: " ", omittingEmptySubsequences: true)
    for _ in 1...words[0].count {
        for j in words {
            if j.contains(String(words[0].prefix(offset))) {
                gotIt = false
            } else {
                gotIt = true
            }
        }
        if gotIt {
            result = String(words[0].prefix(offset - 1))
        } else {
            offset += 1
        }
    }
    print("result is", result)
    return result
}
