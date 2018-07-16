//
//  ObservationTableViewController.swift
//  Field Survey
//
//  Created by Jonah Zukosky on 7/15/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class ObservationTableViewController: UITableViewController {

    var observations: [Observation] = Observation.retrieve()
    let dateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return observations.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationCell", for: indexPath) as! ObservationTableViewCell

        print(observations[indexPath.row].title)
        cell.icon.image = UIImage(named: observations[indexPath.row].classification.rawValue)
        cell.title.text = observations[indexPath.row].title
        cell.date.text = dateFormatter.string(from: observations[indexPath.row].date)
        

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ObservationDetailViewController
        guard let selectedRow = tableView.indexPathForSelectedRow?.row else {return}
        
        if let image = UIImage(named: observations[selectedRow].classification.rawValue) {
            destination.iconImage = image
        }
        destination.observationTitleText = observations[selectedRow].title
        destination.observationDescriptionText = observations[selectedRow].description
        destination.bufferDate = dateFormatter.string(from: observations[selectedRow].date)
        
    }
 

}
