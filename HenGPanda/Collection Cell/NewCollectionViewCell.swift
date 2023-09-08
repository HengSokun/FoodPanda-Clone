//
//  NewCollectionViewCell.swift
//  HenGPanda
//
//  Created by heng on 8/9/23.
//

import UIKit

class NewCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var announ: UILabel!
    @IBOutlet weak var timeTaken: UILabel!
    @IBOutlet weak var titleItem: UILabel!
    @IBOutlet weak var descriptionItem: UILabel!
    @IBOutlet weak var priceItem: UILabel!
    
    func config(with item: Item){
        
        thumbnail.layer.cornerRadius = 10
        let cornerRadius: CGFloat = 10.0
        let maskPath = UIBezierPath(roundedRect: announ.bounds, byRoundingCorners: [.topRight, .bottomRight], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        announ.layer.mask = maskLayer
        timeTaken.layer.cornerRadius = 10
        timeTaken.layer.masksToBounds = true

        if item.isAnnoun {
            announ.backgroundColor = UIColor(hue: 0.9611, saturation: 1, brightness: 1, alpha: 1.0)
        }
        else {
            announ.backgroundColor = .black
        }
    }
}
