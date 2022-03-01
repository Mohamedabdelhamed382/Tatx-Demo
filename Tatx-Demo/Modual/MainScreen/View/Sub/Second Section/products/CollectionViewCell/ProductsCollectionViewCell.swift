//
//  ProductsCollectionViewCell.swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 27/02/2022.
//

import UIKit

class ProductsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var oldPrice: UILabel!
    @IBOutlet weak var offerLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        offerLabel.round(corners: [.topRight, .bottomRight], cornerRadius: 20)
        oldPrice.attributedText = "SAR 75".strikeThrough()

    }

}
