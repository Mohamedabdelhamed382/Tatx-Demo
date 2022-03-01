//
//  HedderBarSectionTableViewCell.swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 28/02/2022.
//

import UIKit



class HedderBarSectionTableViewCell: UITableViewCell {

    @IBOutlet weak var SearchTextField: CustomTextField!
    @IBOutlet weak var loctionImageView: UIImageView!
    @IBOutlet weak var loctionCityLabelView: UILabel!
    @IBOutlet weak var changeCityButtonOutlet: UIButton!
    
  
    
}

extension HedderBarSectionTableViewCell {
    
    func configur(model:HedderBarSectionModel) {
        
        self.loctionImageView.image = UIImage(systemName: model.loctionIcon ?? "")
        self.loctionCityLabelView.text = model.loctionLabel
        
        
    }
}
