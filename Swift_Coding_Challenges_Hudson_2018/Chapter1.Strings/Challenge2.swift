//
//  Challenge2.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 18.12.2023.
//

import Foundation

private func challenge2(input: String) -> Bool {
    String(input.lowercased().reversed()) == input.lowercased()
}

private func challenge2Test() {
    challenge2(input: "rotator").toPrint()
    challenge2(input: "Rats live on no evil star").toPrint()
    challenge2(input: "Never odd or even").toPrint()
    challenge2(input: "Hello, world").toPrint()
}
