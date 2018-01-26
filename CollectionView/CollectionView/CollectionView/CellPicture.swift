//
//  CellPicture.swift
//  CollectionView
//
//  Created by dataguru on 2018. 1. 26..
//  Copyright © 2018년 dataguru. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage

class CellPicture: UICollectionViewCell {
    @IBOutlet weak var picture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func SetPicture(_ path: String) {
        picture.af_setImage(withURL: URL(string:path)!)
    }
}
