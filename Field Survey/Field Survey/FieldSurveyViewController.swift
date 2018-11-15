//
//  FieldSurveyViewController.swift
//  Field Survey
//
//  Created by Zac Johnson on 11/15/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var fieldSurveyTableView: UITableView!
    let dateFormatter = DateFormatter()
    
    var events = FieldSurveyJSONLoader.load(fileName: "field_observations")

    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FieldSurveyCell", for: indexPath)
        
        if let cell = cell as? FieldSurveyTableViewCell {
            let FieldSurvey = events[indexPath.row]
            cell.FieldSurveyImageView.image = FieldSurvey.animal.image
            cell.ClassificationLabel.text = FieldSurvey.animal
            cell.DateLabel.text = dateFormatter.string(from: FieldSurvey.date)
        }
            
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyViewController,
            let row = fieldSurveyTableView.indexPathForSelectedRow?.row {
            destination.events = [events[row]]
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
