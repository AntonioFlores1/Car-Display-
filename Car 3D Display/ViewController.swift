//
//  ViewController.swift
//  Car 3D Display
//
//  Created by antonio  on 1/10/20.
//  Copyright © 2020 antonio . All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var CollectionView: UICollectionView!
    
    var carsArray = CarInfo.carInfoArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CollectionView.dataSource = self
        CollectionView.delegate = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "carCell", for: indexPath) as? CarCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let carInfoForCell = carsArray[indexPath.row]
        
        collectionViewCell.display(info:carInfoForCell)
//        collectionViewCell.sizeThatFits(CGSize(width: 600, height: 200))
        
//        collectionViewCell.backgroundColor = .red
        
        return collectionViewCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    

            return CGSize(width: 250, height: 250)
//        return CGSize(width: 500, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                           layout collectionViewLayout: UICollectionViewLayout,
                           minimumLineSpacingForSectionAt section: Int) -> CGFloat {
           return 20
       }

}

