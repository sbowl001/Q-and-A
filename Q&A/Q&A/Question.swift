//
//  Question.swift
//  Q&A
//
//  Created by Stephanie Bowles on 5/3/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import Foundation
//what is Equatable?
struct Question {
//     A question string that represents the actual question the asker has
    var question: String
//    An asker string that will store the name of the person asking the question
    var asker: String
//    An optional answer string that represents the answer to the question. This should be optional as there will not be an answer for a question as soon as it is created.
    var answer: String?  // =nil 
//    An optional answerer string that is the name of the person answering the question
    var answerer: String?
//    Create an initializer for this struct that gives default values of nil to the answer and answerer parameters.
    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
   

    
}

 


