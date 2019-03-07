//
//  ListService.swift
//  instagram
//
//  Created by Irvin Leon on 3/6/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import Foundation
import UIKit

class ListService {
    var posts :[Post] = []
    func getPosts() -> [Post] {
        posts.append(Post(photo:#imageLiteral(resourceName: "img5") , description:"imagen1"))
        posts.append(Post(photo:#imageLiteral(resourceName: "img4") , description:"imagen2"))
        posts.append(Post(photo:#imageLiteral(resourceName: "img3") , description:"imagen3"))
        posts.append(Post(photo:#imageLiteral(resourceName: "img1") , description:"imagen4"))
        posts.append(Post(photo:#imageLiteral(resourceName: "img4") , description:"imagen5"))
        
        return posts
    }
    
}
