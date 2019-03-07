//
//  DetailViewController.swift
//  instagram
//
//  Created by Irvin Leon on 3/7/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postDescription: UILabel!
    @IBOutlet weak var postBody: UILabel!
    var post: Post?

    override func viewDidLoad() {
        super.viewDidLoad()
        setPostData()
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension DetailViewController {
    func setPostData() -> Void {
        if post == nil {
            fatalError()
        } else {
            self.postImage.image = post?.photo
            self.postTitle.text = post?.title
            self.postDescription.text = post?.description
            self.postBody.text   = post?.body
        }
    }
}
