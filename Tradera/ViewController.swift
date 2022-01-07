//
//  ViewController.swift
//  Tradera
//
//  Created by ITHS on 2022-01-07.
//

import UIKit

class ViewController: UIViewController  , UITableViewDataSource , UITableViewDelegate {

    var items = [Item]()
 
    @IBOutlet weak var tableView: UITableView!
   var detailsegues = "detailssegues"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.dataSource = self
        tableView.delegate = self
        
        createList()
        
    }

    
    func createList(){
        let  item1 = Item(imageName: "toy1" , title: "First Toy " )
        let item2 =  Item(imageName: "toy2" , title: "Second Toy " )
        let item3 =   Item(imageName: "toy3" , title: "Third Toy " )
        let item4 = Item(imageName: "toy4" , title: "Forth Toy " )
        let item5 =  Item(imageName: "toy5" , title: "Fifth Toy " )
        let item6 =  Item(imageName: "toy6" , title: "Sixth Toy " )
    
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item4)
        items.append(item5)
        items.append(item6)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let item = items[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ItemCell
            cell.itemTitle.text = item.title
            cell.itemImage.image = UIImage(named: item.imageName)
            return cell
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath : IndexPath ) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: detailsegues, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == detailsegues) {
            let indexPath = self.tableView.indexPathForSelectedRow!
            let itemDetails = segue.destination as? ItemDetailsVC
            
            let selectedItem = items[indexPath.row]
            itemDetails!.selectedItem = selectedItem
            self.tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}
    
    
    
    
    
    
    
    
    

 
