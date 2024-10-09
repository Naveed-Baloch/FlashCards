//
//  Card.swift
//  FlashCards
//
//  Created by Naveed on 09/10/2024.
//

import Foundation

struct Card {
    var prompt: String
    var answer: String

    static let mock = Card(prompt: "What is capital of Pakistan", answer: "ISB")
}
