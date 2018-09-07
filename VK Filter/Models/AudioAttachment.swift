//
//  AudioAttachment.swift
//  VK Filter
//
//  Created by Alexander Zakatnov on 08.09.2018.
//  Copyright © 2018 zaakk.com. All rights reserved.
//

import UIKit

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
