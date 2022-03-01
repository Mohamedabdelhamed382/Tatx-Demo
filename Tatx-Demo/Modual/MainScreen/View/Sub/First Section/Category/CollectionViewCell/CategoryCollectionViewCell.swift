//
//  CollectionViewCell.swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 27/02/2022.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var labelCategory: UILabel!
    @IBOutlet weak var imageCategoryIcon: UIImageView!
}

extension CategoryCollectionViewCell {
    
    func configure(model: CategoryModel) {
        
        imageCategoryIcon.image = UIImage(named: model.categoryIcon ?? "")
        labelCategory.text = model.categoryLabel
        
    }
    
    
}
