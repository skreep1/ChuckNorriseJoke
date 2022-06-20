//
//  Joke.swift
//  ChuckNorriseJoke
//
//  Created by Maksim Skrypka on 19.06.2022.
//

import Foundation

struct Root: Codable {
    let values: [Joke]
}

struct Joke: Codable {
    let value: String
}


