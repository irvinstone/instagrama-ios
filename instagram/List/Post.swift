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
    var description: String
    init(photo: UIImage,description: String) {
        self.photo = photo
        self.description = description
    }
}
