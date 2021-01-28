//
//  Songs.swift
//  Playlist
//
//  Created by kushal on 27/01/21.
//

import Foundation

enum CoverImage {
    case coverImage1
    case coverImage2
    case coverImage3
    case coverImage4
    case coverImage5
}

class Song {

    var cover: CoverImage
    var name: String
    var artist: String
    var album: String
    
    init(cover: CoverImage, name: String, artist: String, album: String) {
        self.cover = cover
        self.name = name
        self.artist = artist
        self.album = album
    }
    
    func getCoverImage() -> String {
        switch cover {
        case .coverImage1:
            return "Cover Art 1"
        case .coverImage2:
            return "Cover Art 2"
        case .coverImage3:
            return "Cover Art 3"
        case .coverImage4:
            return "Cover Art 4"
        case .coverImage5:
            return "Cover Art 5"
        }
    }
}
