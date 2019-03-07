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
    
    static func getPosts() -> [Post] {
        var posts :[Post] = []
        posts.append(Post(photo:#imageLiteral(resourceName: "img5") ,title:"IMG1", description:"imagen1",body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"))
        posts.append(Post(photo:#imageLiteral(resourceName: "img4") ,title:"IMG2", description:"imagen2",body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"))
        posts.append(Post(photo:#imageLiteral(resourceName: "img3") ,title:"IMG3", description:"imagen3",body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"))
        posts.append(Post(photo:#imageLiteral(resourceName: "img1") ,title:"IMG4", description:"imagen4",body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"))
        posts.append(Post(photo:#imageLiteral(resourceName: "img4") ,title:"IMG5", description:"imagen5",body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"))
        return posts
    }
    
}
