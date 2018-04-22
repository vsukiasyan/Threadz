//
//  CatergoryCell.swift
//  Threadz
//
//  Created by Vic Sukiasyan on 4/21/18.
//  Copyright © 2018 Vic Sukiasyan. All rights reserved.
//

import UIKit

class CatergoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!


    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }



}
