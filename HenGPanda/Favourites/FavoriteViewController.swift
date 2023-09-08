//
//  FavoriteViewController.swift
//  HenGPanda
//
//  Created by heng on 5/9/23.
//

import UIKit

@IBDesignable
class FavoriteViewController: UIViewController {
    
    @IBOutlet weak var pickupBtn: UIButton!
    @IBOutlet weak var deliveryBtn: UIButton!
    @IBOutlet weak var findfavouriteBtn: UIButton!
    @IBOutlet weak var restuarantsBtn: UIButton!
    @IBOutlet weak var shopsBtn: UIButton!
    
    @IBOutlet weak var colorView1: UIView!
    @IBOutlet weak var colorView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickupBtn.backgroundColor = .clear
        deliveryBtn.backgroundColor = .clear
        pickupBtn.layer.borderWidth = 1
        pickupBtn.layer.cornerRadius = 20
        pickupBtn.layer.masksToBounds = true
        pickupBtn.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        deliveryBtn.layer.borderWidth = 1
        deliveryBtn.layer.cornerRadius = 20
        deliveryBtn.layer.masksToBounds = true
        deliveryBtn.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor

        findfavouriteBtn.tintColor = UIColor(red: 0.99, green: 0.01, blue: 0.56, alpha: 1.00)
        
        colorView1.backgroundColor = .clear
        colorView2.backgroundColor = .clear
    }
    
    @IBAction func categoryButtonDidClick(_ sender: UIButton) {
        let pinkColor = UIColor(red: 0.99, green: 0.01, blue: 0.56, alpha: 1.00)
        
        switch sender {
            case restuarantsBtn:
                restuarantsBtn.tintColor = pinkColor
                shopsBtn.tintColor = .black
                colorView1.backgroundColor = pinkColor
                colorView2.backgroundColor = .clear
            case shopsBtn:
                shopsBtn.tintColor = pinkColor
                restuarantsBtn.tintColor = .black
                colorView2.backgroundColor = pinkColor
                colorView1.backgroundColor = .clear
            case deliveryBtn:
                deliveryBtn.backgroundColor = pinkColor
                pickupBtn.backgroundColor = .clear
            case pickupBtn:
                pickupBtn.backgroundColor = pinkColor
                deliveryBtn.backgroundColor = .clear
            default:
                break
        }
    }

    
}
