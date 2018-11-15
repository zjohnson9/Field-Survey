//
//  FieldSurveyDescriptionViewController.swift
//  Field Survey
//
//  Created by Zac Johnson on 11/15/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import UIKit

class FieldSurveyDescriptionViewController: UIViewController {

    @IBOutlet weak var fieldSurveyImageView: UIImageView!
    @IBOutlet weak var classificationLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fieldSurveyImageView.image = fieldSurvey?.animal.image
        
        fieldSurveyClassification.text = fieldSurvey?.title
        
        fieldDescription.text = fieldSurvey?.description
        
        if let date = fieldSurvey?.date{
            dateLabel.text = DateFormatter.string(from: date)
        }
        else {
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
