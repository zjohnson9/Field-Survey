//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Zac Johnson on 11/15/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {
    @IBOutlet weak var FieldSurveyImageView: UIImageView!
    
    @IBOutlet weak var ClassificationLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
