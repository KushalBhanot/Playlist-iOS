//
//  Songs.swift
//  Playlist
//
//  Created by kushal on 27/01/21.
//

import Foundation

class Song {
    var name: String
    var artist: String
    var album: String
    
    init(name: String, artist: String, album: String) {
        self.name = name
        self.artist = artist
        self.album = album
    }
}
