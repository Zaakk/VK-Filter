//
//  Likes.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 08.09.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

struct Likes:Codable {
    let count:Int
    let userLikes:Bool
    let canLike:Bool
    let canPublish:Bool
    
    enum CodingKeys:String, CodingKey {
        case count
        case userLikes = "user_like"
        case canLike = "can_like"
        case canPublish = "can_publish"
    }
}
