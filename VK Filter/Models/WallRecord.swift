//
//  WallRecord.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 09.08.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

enum PostType:String, Codable {
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

struct VideoAttachment:Codable {
    let id:Int
    let ownerId:Int
    let title:String
    let description:String
    let duration:Int
    let photo130:Int
    let photo320:Int
    let photo640:Int
    let photo800:Int
    let date:TimeInterval
    let addingDate:TimeInterval
    let views:Int
    let comments:Int
    let player:URL
    let platform:String
    let canEdit:Bool?
    let canAdd:Bool?
    let isPrivate:Bool?
    let accessKey:String
    let processing:Bool?
    let live:Bool?
    let upcoming:Bool?
    
    enum CodingKeys:String, CodingKey {
        case id, title, description, duration, date, views, comments, player, platform, processing, live, upcoming
        case ownerId = "owner_id"
        case photo130 = "photo_130"
        case photo320 = "photo_320"
        case photo640 = "photo_640"
        case photo800 = "photo_800"
        case addingDate = "adding_date"
        case canEdit = "can_edit"
        case canAdd = "can_add"
        case isPrivate = "is_private"
        case accessKey = "access_key"
    }
}

struct AudioAttachment:Codable {
    let id:Int
    let ownerId:Int
    let artist:String
    let title:String
    let duration:Int
    let url:URL
    let lyricsId:Int
    let albumId:Int
    let genreId:Int
    let date:TimeInterval
    let noSearch:Bool?
    let isHq:Bool
    
    enum CodingKeys:String, CodingKey {
        case id, artist, title, duration, url, date
        case ownerId = "owner_id"
        case lyricsId = "lyrics_id"
        case albumId = "album_id"
        case genreId = "genre_id"
        case noSearch = "no_search"
        case isHq = "is_hq"
    }
}

struct Attachment:Codable {
    let type:AttachmentType
    
}

class WallRecord: Codable {
    let id:Int
    let fromId:Int
    let ownerId:Int
    let date:Date
    let postType:PostType //TODO: replace with enum
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
