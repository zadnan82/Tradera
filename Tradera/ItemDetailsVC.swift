//
//  ItemDetailsVC.swift
//  Tradera
//
//  Created by ITHS on 2022-01-07.
//

import UIKit

class ItemDetailsVC: UIViewController {

    @IBOutlet weak var itemName: UILabel!
    
    @IBOutlet weak var itemImage: UIImageView!
    
    var selectedItem : Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        itemName.text = selectedItem.title

        itemImage.image = UIImage (named : selectedItem.imageName)

             
        
    }
    

 

}
