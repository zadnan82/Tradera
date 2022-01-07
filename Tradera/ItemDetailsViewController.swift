//
//  ItemDetailsViewController.swift
//  Tradera
//
//  Created by ITHS on 2022-01-07.
//

import UIKit

class ItemDetailsViewController: UIViewController {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    
    var selectedItem : Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
        itemTitle.text = selectedItem.title
        itemImage.image = UIImage (named : selectedItem.imageName)
        
    }
    

  

}
