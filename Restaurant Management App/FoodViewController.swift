//
//  FoodViewController.swift
//  Restaurant Management App
//
//  Created by Jakob Clements on 2020-07-24.
//  Copyright © 2020 Jakob Clements. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let foodList = ["Burger", "Steak", "Pizza", "Salad"]
    let priceList = ["8.00", "15.00", "5.00", "3.00"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tempCell = tableView.dequeueReusableCell(withIdentifier: "cell")
        tempCell?.textLabel?.text = foodList[indexPath.row]
        tempCell?.detailTextLabel?.text = priceList[indexPath.row]
        return tempCell!
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
