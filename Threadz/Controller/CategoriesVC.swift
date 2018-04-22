//
//  ViewController.swift
//  Threadz
//
//  Created by Vic Sukiasyan on 4/21/18.
//  Copyright © 2018 Vic Sukiasyan. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        categoryTable.dataSource = self
        categoryTable.delegate = self
        
        self.categoryTable.rowHeight = 154
    
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CatergoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            
            return cell
        } else {
            return CatergoryCell()
        }
    }
    

}

