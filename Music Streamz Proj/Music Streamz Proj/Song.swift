//
//  Song.swift
//  Music Streamz Proj
//
//  Created by Pingdi Huang on 5/1/18.
//  Copyright © 2018 Pingdi Huang, Alicia Chen, Tyler Ishikawa. All rights reserved.
//

import UIKit
import Foundation
import SwiftyJSON

class Song: NSObject {
    
    var name: String
    var artist: String
    var album: String
    var imageUrl: String
    var audioUrl: String
    
    override var description: String {
        return "Song(\(name), \(artist), \(album))"
    }
    
    init(name: String, artist: String, album: String, imageUrl: String, audioUrl: String) {
        self.name = name
        self.artist = artist
        self.album = album
        self.imageUrl = imageUrl
        self.audioUrl = audioUrl
    }
    
    init(json: JSON) {
        self.name = json["song_name"].stringValue
        self.artist = json["artist_name"].stringValue
        self.album = json["album_name"].stringValue
        self.imageUrl = json["album_image"].stringValue
        self.audioUrl = json["preview_url"].stringValue
    }
}

