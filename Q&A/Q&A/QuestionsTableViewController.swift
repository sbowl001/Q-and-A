//
//  TableViewController.swift
//  Q&A
//
//  Created by Stephanie Bowles on 5/3/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source
    
/*Add a constant called questionController and set its value to a new instance of QuestionController.
 Using this questionController, implement the numberOfRowInSection function.
 Implement the cellForRowAt method. Remember that you are using a custom cell. This function should pass an instance of Question to the cell.
 Implement the commit editingStyle method to allow for deleting question cells. (remember to delete a Question before you delete the cell)
 Add the viewWillAppear method. Reload the table view in it so that when a new question or answer gets added, the table view will reflect these changes.*/
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }


/*Prepare for Segway:
 Finally, go back to the QuestionsTableViewController class. Now that the destination view controllers that this view controller segues to are implemented, fill out the prepareForSegue method.
 
 If the segue is going to the AskQuestionViewController, you need to pass the questionController.
 If the segue is going to the AnswerQuestionViewController, you need to pass the questionController, and also the question that the user tapped on and wishes to view and/or add an answer to. */
    

   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
