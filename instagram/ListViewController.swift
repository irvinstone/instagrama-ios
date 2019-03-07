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
        posts = ListService().getPosts()
        listCollectionView.dataSource = self
        listCollectionView.delegate = self
    }


}
