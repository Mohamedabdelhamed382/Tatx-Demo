//
//  CategoryTableViewCell.swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 27/02/2022.
//

import UIKit
enum TypeOfCollection {
    case HeaderIndecatorCollectionViewCell
    case CategoryCollectionViewCell
}

class FirstSectionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var labeltopNSLayout: NSLayoutConstraint!
    @IBOutlet weak var labelHeightNSLayout: NSLayoutConstraint!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var categoryModel = [CategoryModel]()
    var offerImage = ["outfit1", "outfit3", "outfit4", "outfit2",]
    var timer : Timer?
    var currentCellIndex = 0
    var type: TypeOfCollection = .HeaderIndecatorCollectionViewCell
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bindingData()
        configure()
        registerCell()
        startTimer()
        pageControlConfigure()
    }
    
    
    
}

extension FirstSectionTableViewCell {
    
    private func configure() {
        CollectionView.delegate = self
        CollectionView.dataSource = self
    }
    
    func pageControlConfigure() {
        switch type {
        case .HeaderIndecatorCollectionViewCell:
            pageControl.numberOfPages = offerImage.count
        case .CategoryCollectionViewCell:
            break
        }
    }
    
    
     func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(moveToNext), userInfo: nil, repeats: true)
    }
    
    @objc
    func moveToNext() {
        
        
        if currentCellIndex < offerImage.count - 1 {
            currentCellIndex += 1
            
        }else {
            currentCellIndex = 0
            
        }
        switch type {
        case .HeaderIndecatorCollectionViewCell:
            CollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
            pageControl.currentPage = currentCellIndex
        case .CategoryCollectionViewCell:
            break
        }
        
    }
    
    private func registerCell() {
        CollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
        CollectionView.register(UINib(nibName: "HeaderIndecatorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HeaderIndecatorCollectionViewCell")
    }
    
    private func bindingData() {
        
        categoryModel.append(CategoryModel(categoryIcon: "childFashon", categoryLabel: "Child Fashion"))
        categoryModel.append(CategoryModel(categoryIcon: "kitchen Tools", categoryLabel: "Kitchen Tools"))
        categoryModel.append(CategoryModel(categoryIcon: "hobbies", categoryLabel: "Hobbies"))
        categoryModel.append(CategoryModel(categoryIcon: "foodAndDrinks", categoryLabel: "Food & Drinks"))
        categoryModel.append(CategoryModel(categoryIcon: "furniture", categoryLabel: "Furniture"))
        categoryModel.append(CategoryModel(categoryIcon: "childFashon", categoryLabel: "Child Fashion"))
    }
    
}

extension FirstSectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch type {
        case .HeaderIndecatorCollectionViewCell:
            return offerImage.count
        case .CategoryCollectionViewCell:
            return categoryModel.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch type {
        case .HeaderIndecatorCollectionViewCell:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeaderIndecatorCollectionViewCell", for: indexPath) as! HeaderIndecatorCollectionViewCell
            titleLabel.isHidden = true
            labeltopNSLayout.constant = 4
            labelHeightNSLayout.constant = 0
            cell.configure(offerImage[indexPath.row])
            return cell
        case .CategoryCollectionViewCell:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
            cell.configure(model: categoryModel[indexPath.row])
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch type {
        case .HeaderIndecatorCollectionViewCell:
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        case .CategoryCollectionViewCell:
            return CGSize(width: (collectionView.frame.width / 2) - 8, height: 50)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        switch type {
        
        case .HeaderIndecatorCollectionViewCell:
            return 0
        case .CategoryCollectionViewCell:
            return 16
        }
    }
}
