//
//  TableViewController.swift
//  Q&A
//
//  Created by Stephanie Bowles on 5/3/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
     

//         Add the viewWillAppear method. Reload the table view in it so that when a new question or answer gets added, the table view will reflect these changes.
        

//    Add a constant called questionController and set its value to a new instance of QuestionController.
    let questionController = QuestionController()
    
    // MARK: - Table view data source
    

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//         Using this questionController, implement the numberOfRowInSection function.
        return questionController.questions.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //  Implement the cellForRowAt method. Remember that you are using a custom cell. This function should pass an instance of Question to the cell.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "questionDisplay", for: indexPath) as? QuestionTableViewCell else { return UITableViewCell()}
        
        let question = questionController.questions[indexPath.row]
        cell.question = question
        
       
//        cell.questionLabel.text = questionController.questions[indexPath.row].question
//        cell.askedLabel.text = questionController.questions[indexPath.row].asker
//        cell.viewAnswerLabel.text = questionController.questions[indexPath.row].answer
         return cell
   
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete {
            //         Implement the commit editingStyle method to allow for deleting question cells. (remember to delete a Question before you delete the cell)
            questionController.delete(indexPath: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }  //no idea how this works

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toSubmitAnswer"){
            guard let indexPath = tableView.indexPathForSelectedRow,
                let answerViewController = segue.destination as? AnswerViewController else {return}
            let question = questionController.questions[indexPath.row]
            answerViewController.question = question
            answerViewController.questionController = questionController
        } else if(segue.identifier == "toSubmitQuestion") {
            guard let destinationVC = segue.destination as? SubmitQViewController else { return }
            
            destinationVC.questionController = questionController
        }
    }
    
    //another option
    
    
    /*
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 if segue.identifier == "toAnswerView" {
 guard let destinationVC = segue.destination as? AskQuestionViewController else { return }
 
 } else if segue.identifier == "toQuestionView" {
 guard let destinationVC = segue.destination as? AnswerViewController,
 let indexPath = tableView.indexPathForSelectedRow else { return }
 
 }
 
 }*/  
/*Prepare for Segway:
 Finally, go back to the QuestionsTableViewController class. Now that the destination view controllers that this view controller segues to are implemented, fill out the prepareForSegue method.
 
 If the segue is going to the AskQuestionViewController, you need to pass the questionController.
 If the segue is going to the AnswerQuestionViewController, you need to pass the questionController, and also the question that the user tapped on and wishes to view and/or add an answer to. */
    
    //No idea how segway works here.

   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
