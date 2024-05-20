//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation



struct StoryBrain {
//    let stories: [Story] = [
//        Story(t: "You see a fork in the road.", c1: "Take a left.", c2: "Take a right."),
//        Story(t: "You see a tiger.", c1: "Shout for help.", c2: "Play dead."),
//        Story(t: "You find a treasure chest.", c1: "Open it.", c2: "Check for traps")
//    ]
    let storiesEx: [StoryEx] = [
        StoryEx(
          title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
          choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
          choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
      ),
        StoryEx(
          title: "He nods slowly, unfazed by the question.",
          choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
          choice2: "Wait, I know how to change a tire.", choice2Destination: 3
      ),
        StoryEx(
          title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
          choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
          choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
      ),
        StoryEx(
          title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
          choice1: "The", choice1Destination: 0,
          choice2: "End", choice2Destination: 0
      ),
        StoryEx(
          title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
          choice1: "The", choice1Destination: 0,
          choice2: "End", choice2Destination: 0
      ),
        StoryEx(
          title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
          choice1: "The", choice1Destination: 0,
          choice2: "End", choice2Destination: 0
      )
    ]
    
    var storyId: Int = 0
    
    mutating func nextStory(id : Int) -> [String: Any] {
        storyId = id
        let story : [String: Any]
        let choices = storiesEx[id].choices
        story = [
            "text": storiesEx[id].text as String,
            "choice1": choices["first"]!["text"] as! String,
            "choice2": choices["second"]!["text"] as! String,
            "choice1Destiny": choices["first"]!["destination"] as! Int,
            "choice2Destiny": choices["second"]!["destination"] as! Int,
            ]
//        print(storiesEx.compactMap { $0 })
        return story
    }
    
    func choiceMade(_ choice: Int) -> Int {
        return choice == 1 ? storiesEx[storyId].choices["first"]!["destination"] as! Int : choice == 2 ? storiesEx[storyId].choices["second"]!["destination"] as! Int : 0 
    }
    
    
}
