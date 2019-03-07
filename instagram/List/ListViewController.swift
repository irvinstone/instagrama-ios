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
        
        if segue.identifier == "modalSegue" {
            guard let navigationController  = segue.destination as? UINavigationController else {
                return
            }
            guard let modalView = navigationController.viewControllers.first as? LoginViewController else {
                return
            }
            modalView.delegate = self
        }
    }
}

extension ListViewController: LoginViewControllerDelegate {
    func loginData(user: String, password: String) {
        navigationItem.title = user
        print(user)
        print(password)
    }
    
}
