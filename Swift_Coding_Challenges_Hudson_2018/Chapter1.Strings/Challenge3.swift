//
//  Challenge3.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 18.12.2023.
//

import Foundation

private func challenge3(str1: String, str2: String) -> Bool {
    str1.sorted() == str2.sorted()
}

private func challenge3Test() {
    challenge3(str1: "abca", str2: "abca").toPrint()
    challenge3(str1: "abc", str2: "cba").toPrint()
    challenge3(str1: "a1 b2", str2: "b1 a2").toPrint()
    challenge3(str1: "abc", str2: "abca").toPrint()
    challenge3(str1: "abc", str2: "Abc").toPrint()
    challenge3(str1: "abc", str2: "cbAa").toPrint()
}
