//
//  MainScreenViewController.swift
//  Tatx-Demo
//
//  Created by MOHAMED ABD ELHAMED AHMED on 27/02/2022.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setNeedsStatusBarAppearanceUpdate()
        configure()
        registerCell()
        self.hideKeyboardWhenTappedAround()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }

}

extension MainScreenViewController {
    
    private func configure() {
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.rowHeight = UITableView.automaticDimension;
        self.tableView.estimatedRowHeight = 44.0;
    }
    
    private func registerCell() {
        tableView.register(UINib(nibName: "MainScreenTableViewCell", bundle: nil), forCellReuseIdentifier: "MainScreenTableViewCell")
        tableView.register(UINib(nibName: "FirstSectionTableViewCell", bundle: nil), forCellReuseIdentifier: "FirstSectionTableViewCell")
        tableView.register(UINib(nibName: "HedderBarSectionTableViewCell", bundle: nil), forCellReuseIdentifier: "HedderBarSectionTableViewCell")
    }
    
}

extension MainScreenViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HedderBarSectionTableViewCell", for: indexPath) as! HedderBarSectionTableViewCell
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstSectionTableViewCell", for: indexPath) as! FirstSectionTableViewCell
            cell.type = .HeaderIndecatorCollectionViewCell
            
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstSectionTableViewCell", for: indexPath) as! FirstSectionTableViewCell
            cell.type = .CategoryCollectionViewCell
            
            return cell
           
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainScreenTableViewCell", for: indexPath) as! MainScreenTableViewCell
            cell.titleLabel.text = "First Line Catgory"
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "MainScreenTableViewCell", for: indexPath) as! MainScreenTableViewCell
            cell.titleLabel.text = "Scound Line Catgory"
            return cell
        default:
            return UITableViewCell()
        }
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 120
        case 1:
            return 370
        case 2:
            return 245
        case 3:
            return 332
        case 4:
            return 332
        default:
            return 230
        }

    }
}
