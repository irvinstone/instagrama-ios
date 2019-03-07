//
//  Post.swift
//  instagram
//
//  Created by Irvin Leon on 3/6/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import Foundation
import UIKit
class Post {
    var photo: UIImage
    var title: String
    var description: String
    var body: String
    init(photo: UIImage,title: String,description: String, body: String) {
        self.photo = photo
        self.title = title
        self.description = description
        self.body = body
    }
}
