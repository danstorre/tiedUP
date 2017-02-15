//
//  ProfileViewController.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/15/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var tableOfPerformance: UITableView!
    var performanceItems : [PerformanceItem] = [PerformanceItem]()
    var headers : [String] = ["Time Trial","Marathon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let marathonPerformanceItem = PerformanceItem(image: #imageLiteral(resourceName: "marathon"), value: "7" , description: "Words", progress: 0.5)
        let timeTrialPerformanceItem = PerformanceItem(image: #imageLiteral(resourceName: "timetrial"), value: "01:30" , description: "Avg Time", progress: 0.5)
        
        performanceItems.append(timeTrialPerformanceItem)
        performanceItems.append(marathonPerformanceItem)
        
        tableOfPerformance.tableFooterView = UIView(frame: .zero)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

// MARK:- TableViewMethods

extension ProfileViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "performanceItemCell") as! PerformanceTableViewCell
        
        let index = indexPath.section == 1 ? indexPath.item + 1 : indexPath.item
        
        
        
        cell.imageProgressItem.image = performanceItems[index].image
        cell.valueProgressItem.text = performanceItems[index].value
        cell.descriptionProgressItem.text = performanceItems[index].description
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return headers.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
   
}











