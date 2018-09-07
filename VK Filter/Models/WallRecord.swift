//
//  WallRecord.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 09.08.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

class WallRecord: Codable {
    let id:Int
    let ownerId:Int
    let fromId:Int
    let createdBy:Int?
    let date:Date
    let text:String
    let replyOwnerId:Int?
    let replyPostId:Int?
    let friendsOnly:Bool?
    let likes:Likes?
    let reposts:Reposts?
    let postType:PostType
    let postSource:PostSource
    let copyHistory:WallRecord?
    let canDelete:Bool
    let canPin:Bool
    
    enum CodingKeys:String, CodingKey {
        case id
        case ownerId = "owner_id"
        case fromId = "from_id"
        case createdBy = "created_by"
        case date
        case postType = "post_type"
        case postSource = "post_source"
        case text
        case replyOwnerId = "reply_owner_id"
        case replyPostId = "reply_post_id"
        case friendsOnly = "friends_only"
        case likes
        case reposts
        case copyHistory = "copy_history"
        case canDelete = "can_delete"
        case canPin = "can_pin"
    }
}

enum PostType:String, Codable {
    case post
    case copy
    case reply
    case postpone
    case suggest
}

enum AttachmentType:String, Codable {
    case photo
    case postedPhoto
    case video
    case audio
    case doc
    case graffiti
    case link
    case note
    case app
    case poll
    case page
    case album
    case photosList
    case market
    case marketAlbum
    case sticker
    case prettyCards
    
    enum CodingKeys:String, CodingKey {
        case photo, video, audio, doc, graffiti, link, note, app, poll, page, album, market, sticker
        case postedPhoto = "posted_photo"
        case photosList = "photos_list"
        case marketAlbum = "market_album"
        case prettyCards = "pretty_cards"
    }
}

struct Attachment:Codable {
    let type:AttachmentType
    
}

enum Platform:String, Codable {
    case android
    case iphone
    case wphone
}

enum WallRecordSourceType:String, Codable {
    case vk, widget, api, rss, sms
}

struct PostSourceData:Codable {
    let activity:String?
    let photo:Photo?
    let widget:String?
    let like:String?
    let poll:String?
    let url:URL?
}

struct PostSource:Codable {
    let type:WallRecordSourceType
    let platform:Platform
    
}
