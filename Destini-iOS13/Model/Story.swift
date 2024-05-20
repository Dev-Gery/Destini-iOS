//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

//var storyStruct : [[String: String]] = [["title": "", "choice1": "", "choice2": ""]]
//func Story(title: String, choice1: String, choice2: String) {
//    storyStruct.append(["title" : title, "choice1" : choice1, "choice2" : choice2])
//}


struct Story {
    let text : String
    let choices: [String]
    init(t: String, c1: String, c2: String) {
        (text, choices) = (t, [c1, c2])
    }
}

struct StoryEx {
    let text : String
    let choices: [String: [String : Any]]
    init(title: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        (text, choices) = (title, ["first": ["text": choice1, "destination": choice1Destination], "second": ["text": choice2, "destination": choice2Destination]])
    }
}


