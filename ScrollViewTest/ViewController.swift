//
//  ViewController.swift
//  ScrollViewTest
//
//  Created by Morten Just Petersen on 11/19/18.
//  Copyright © 2018 Morten Just Petersen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collection: UICollectionView!
    
    @IBOutlet weak var collectionViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
        
         
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionViewHeight.constant = collection.collectionViewLayout.collectionViewContentSize.height
    }
}




extension UIViewController : UICollectionViewDelegate {
    
}


extension UIViewController : UICollectionViewDataSource {
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 200
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        cell.backgroundColor = UIColor.gray
        
        return cell
        
    }
    
    
}

