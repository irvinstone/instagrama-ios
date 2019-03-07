//
//  ViewController.swift
//  instagram
//
//  Created by Irvin Leon on 3/6/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var listCollectionView: UICollectionView!
    var posts: [Post] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        posts = ListService.getPosts()
        listCollectionView.dataSource = self
        listCollectionView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showDetail" {
            guard let indexPath = sender as? IndexPath else {
                return
            }
            guard let detailVC  = segue.destination as? DetailViewController else {
                return
            }
            detailVC.post = posts[indexPath.row]
        }
        
    }


}
