//
//  TopicTableViewController.swift
//  NC 2 Explorer Log
//
//  Created by Aucky Riman Halim on 05/05/21.
//

import UIKit

class TopicTableViewController: UITableViewController {

//    struct Topic {
//        var code: String
//        var title: String
//    }

    var topicDictionary = [String: [String]]()
    var topicSectionTitles = [String]()
    var topics = [String]()
    let topicManager = TopicManager()
//    var topicsarray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for topic in topicManager.topics {
            topics.append(topic.topicname)
        }
            
        
        for topic in topics {
            let topicKey = String(topic.prefix(1))
            if var topicValues = topicDictionary[topicKey] {
                topicValues.append(topic)
                topicDictionary[topicKey] = topicValues
            } else {
                topicDictionary[topicKey] = [topic]
            }
        }
            
        topicSectionTitles = [String](topicDictionary.keys)
        topicSectionTitles = topicSectionTitles.sorted(by: { $0 < $1 })
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        //return 1
        return topicSectionTitles.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return topics.count
        let topicKey = topicSectionTitles[section]
          if let topicValues = topicDictionary[topicKey] {
              return topicValues.count
          }
              
          return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath)
//
//        let topic = topics[indexPath.row]
//        cell.textLabel?.text = topic.title
//        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"

        // 3
           let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath)
             
           // Configure the cell...
           let topicKey = topicSectionTitles[indexPath.section]
           if let topicValues = topicDictionary[topicKey] {
               cell.textLabel?.text = topicValues[indexPath.row]
           }

           return cell
        
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return topicSectionTitles[section]
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return topicSectionTitles
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
