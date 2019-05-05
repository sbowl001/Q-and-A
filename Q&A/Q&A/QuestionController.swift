//
//  QuestionController.swift
//  Q&A
//
//  Created by Stephanie Bowles on 5/3/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import Foundation
import UIKit

class QuestionController {
    
    //An array of Question objects called questions that will be used as the data source for the application.
    private(set) var questions: [Question] = []
    //    A "Create" function that will initialize a Question object and add it to the questions array.
    func create(question: String, asker: String){
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    //    An "Update" function that takes in a Question (that you want to update), answer string, and an answerer string to add to the question.
    func update(question: Question, with answer: String, from answerer: String){
        
        //op 1:
//        guard let index = questions.index(of: question) else {return}
//        var newQuestion = question
//        newQuestion.answer = answer
//        newQuestion.answerer = answerer
//        questions.remove(at: index)
//        questions.insert(newQuestion, at: index)
        
        //op 2
        
//          question.answer = answer
//          question.answerer = answerer
//
        
        //op 3
        
//        func update(question: Question, answer: String, answerer: String){
//            guard let index = questions.index(of: question) else {return}
//        questions[index].answer = answer
//        questions[index].answerer = answerer
    }
    //    A "Delete" function that takes in a Question to be deleted, and removes it from the questions array.
    func delete(indexPath: Int){
        questions.remove(at: indexPath)
    }
}








