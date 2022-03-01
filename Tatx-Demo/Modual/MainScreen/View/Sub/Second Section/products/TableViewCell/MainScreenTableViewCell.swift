//
//  MainScreenTableViewCell.swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 27/02/2022.
//

import UIKit

class MainScreenTableViewCell: UITableViewCell {

    @IBOutlet weak var CollectionView: UICollectionView!

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        configure()
        registerCell()
    }

   

}

extension MainScreenTableViewCell {
    
    private func configure() {
      
        CollectionView.delegate = self
        CollectionView.dataSource = self
    }
    
    private func registerCell() {
        CollectionView.register(UINib(nibName: "ProductsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductsCollectionViewCell")
    }
    
}

extension MainScreenTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCollectionViewCell", for: indexPath) as! ProductsCollectionViewCell
        
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width / 2) - 6 , height: 270
        )
       }
    
    
}
