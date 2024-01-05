//
//  Challenge4.swift
//  Swift_Coding_Challenges_Hudson_2018
//
//  Created by Vitaly Gromov on 05.01.2024.
//

import Foundation

extension String {
    func fuzzyContains(_ str: String) -> Bool {
        self.range(of: str, options: .caseInsensitive) == nil ? false : true
    }
}

func testChallenge4() {
    let phrase = "Hello, world"
    assert(phrase.fuzzyContains("Hello") == true)
    assert(phrase.fuzzyContains("WORLD") == true)
    assert(phrase.fuzzyContains("Goodbye") == false)
}
