//
//  CollectionViewDemo.swift
//  CollectionView
//
//  Created by dataguru on 2018. 1. 26..
//  Copyright © 2018년 dataguru. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class CollectionViewDemo: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension CollectionViewDemo: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let cellsAcross: CGFloat = 3
        let spaceBetweenCells: CGFloat = 1
        let dim = (collectionView.bounds.width - (cellsAcross - 1) * spaceBetweenCells) / cellsAcross
        return CGSize(width: dim, height: dim)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellPicture", for: indexPath) as! CellPicture
        if ( indexPath.row == 0 ) {
            cell.SetPicture("http://cfile3.uf.tistory.com/image/9968D23359B362212076BF")
        } else if ( indexPath.row == 1 ) {
            cell.SetPicture("http://res.heraldm.com/content/image/2016/09/27/20160927001210_0.jpg")
        } else if ( indexPath.row == 2 ) {
            cell.SetPicture("https://pbs.twimg.com/media/DSmobVAU8AUUyIc.jpg")
        } else if ( indexPath.row == 3 ) {
            cell.SetPicture("https://3.bp.blogspot.com/-PvaHmWkFcos/VrcWuCGutEI/AAAAAAACznY/-w9poWWz2h0/s1600/1.gif")
        } else if ( indexPath.row == 4 ) {
            cell.SetPicture("http://cfile5.uf.tistory.com/image/22041E3C58F5A385083F38")
        }
        return cell
    }
}
