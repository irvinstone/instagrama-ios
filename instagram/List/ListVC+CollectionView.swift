//
//  ListVC+CollectionView.swift
//  instagram
//
//  Created by Irvin Leon on 3/6/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import Foundation
import UIKit

extension ListViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = listCollectionView.dequeueReusableCell(withReuseIdentifier: "postCell", for: indexPath) as? ListCollectionViewCell else {
            fatalError()
        }
        cell.postImage.image = posts[indexPath.row].photo
        cell.postLabel.text = posts[indexPath.row].description
        return cell
        
    }
    
    
}

extension ListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: listCollectionView.frame.width, height: 300)
    }
    
}
