//
//  HeaderIndecatorCollectionViewCell.swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 28/02/2022.
//

import UIKit

class HeaderIndecatorCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var offersImageView: UIImageView!
   

}

extension HeaderIndecatorCollectionViewCell {
    
    func configure(_ imageName: String) {
        offersImageView.image = UIImage(named: imageName)
    }
    
    
}
