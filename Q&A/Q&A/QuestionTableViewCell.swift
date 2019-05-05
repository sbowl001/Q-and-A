//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Stephanie Bowles on 5/3/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedLabel: UILabel!
    @IBOutlet weak var viewAnswerLabel: UILabel!
    
//    Add a variable question whose type is an optional Question.
    var question: Question? = nil {
      // Add a didSet property observer to the question variable, and call updateViews() inside of it.
        didSet {
            updateViews()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    private func updateViews() {
        askedLabel.text = question!.asker
        questionLabel.text = question!.question
        
        if question!.answer == nil && question!.answer == nil {
            viewAnswerLabel.text = "Not answered"
        } else {
            viewAnswerLabel.text = question!.answer
        }
    }

    // Create a private method updateViews(), that takes the values in the question variable and sets the text of the labels accordingly. Make sure you unwrap the question.
    


    


}
