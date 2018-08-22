//
//  WallRecord.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 09.08.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

enum PostType:String {
    case post
    case copy
    case reply
    case postpone
    case suggest
}

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

struct Reposts:Codable {
    let count:Int
    let userReposted:Bool
    
    enum CodingKeys:String, CodingKey {
        case count
        case userReposted = "user_reposted"
    }
}

class WallRecord: Codable {
    let id:Int
    let fromId:Int
    let ownerId:Int
    let date:Date
    let postType:String //TODO: replace with enum
    let text:String
    let copyHistory:WallRecord?
    let canDelete:Bool
    let canPin:Bool
    
    enum CodingKeys:String, CodingKey {
        case id
        case fromId = "from_id"
        case ownerId = "owner_id"
        case date
        case postType = "post_type"
        case text
        case copyHistory = "copy_history"
        case canDelete = "can_delete"
        case canPin = "can_pin"
    }
}
