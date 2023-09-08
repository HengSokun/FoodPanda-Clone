//
//  ViewController.swift
//  HenGPanda
//
//  Created by heng on 5/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UICollectionViewDelegate {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var viewDataContent1: UIView!
    @IBOutlet weak var viewDataContent2: UIView!
    @IBOutlet weak var viewDataContent3: UIView!
    @IBOutlet weak var viewDataContent4: UIView!
    
    let useIdentifier = "ItemTableViewCell"
    
    let collectionIdentifier = "NewCollectionViewCell"
    
    @IBOutlet weak var itemCollectionView: UICollectionView!
    
    var items: [Item] = [
        Item(imageName: "coffee", announcent: "Top Restaurant", titleItem: "13th May (TK)", description: "$$. Tea & Coffee, Cakes", timeTaken: "30 min", price: "$1.99 delivery free", isAnnoun: false),
        Item(imageName: "chick", announcent: " QEIURFD", titleItem: "Classic Chicken Fried", description: "Juicy beef patty topped with melted cheese, lettuce, and tomato.", timeTaken: "20 min", price: "$8.99", isAnnoun: true),
        Item(imageName: "pizza", announcent: "Top Restaurant", titleItem: "Pepperoni Pizza", description: "A mouthwatering pizza with savory pepperoni and melted cheese.", timeTaken: "25 min", price: "$0.99 delivery free", isAnnoun: false),
        Item(imageName: "sushi", announcent: " TRYMHFF", titleItem: "Sushi Platter", description: "Assortment of fresh sushi rolls and sashimi, perfect for sushi lovers.", timeTaken: "40 min", price: "$15.99", isAnnoun: true),
        Item(imageName: "salad", announcent: "Top Restaurant", titleItem: "Garden Salad", description: "A healthy and refreshing salad with mixed greens and balsamic vinaigrette.", timeTaken: "15 min", price: "$6.99", isAnnoun: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.register(UINib.init(nibName: useIdentifier, bundle: .none), forCellReuseIdentifier: useIdentifier)

        searchBar.layer.borderWidth = 0
        searchBar.searchTextField.layer.cornerRadius = 19
        searchBar.searchTextField.layer.masksToBounds = true

        self.searchBar.searchTextField.backgroundColor = .white
        
        viewDataContent1.layer.cornerRadius = 15
        viewDataContent2.layer.cornerRadius = 15
        viewDataContent3.layer.cornerRadius = 15
        viewDataContent4.layer.cornerRadius = 15
        searchBar.searchTextField.backgroundColor = .white
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Favourites", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
        
        itemCollectionView.delegate = self
        itemCollectionView.dataSource = self
        itemCollectionView.register(UINib(nibName: collectionIdentifier, bundle: nil), forCellWithReuseIdentifier: collectionIdentifier)
    }
}


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellSize = CGSize(width: 320, height: 220)

        return cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = itemCollectionView.dequeueReusableCell(withReuseIdentifier: "Infinite", for: indexPath) as! NewCollectionViewCell
        
        let item = items[indexPath.row]
        
        cell.thumbnail.image = UIImage(named: item.imageName)
        cell.announ.text = item.announcent
        cell.timeTaken.text = item.timeTaken
        cell.titleItem.text = item.titleItem
        cell.descriptionItem.text = item.description
        cell.priceItem.text = item.price
        cell.config(with: item)
        
        return cell
    }
}
