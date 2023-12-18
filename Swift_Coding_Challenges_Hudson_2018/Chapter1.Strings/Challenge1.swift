//
//  Challenge1.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 18.12.2023.
//

import Foundation

private func challenge1(input: String) -> Bool {
    Set(input).count == input.count
}

private func challenge1Test() {
    assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
    assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
    assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
    assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed") 
}

extension Bool {
    func toPrint() {
        print(self)
    }
}
