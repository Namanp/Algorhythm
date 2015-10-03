//
//  Playlist.swift
//  Algorhythm
//
//  Created by Naman Priyadarshi on 9/18/15.
//  Copyright (c) 2015 Naman Priyadarshi. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    var title: String?
    var description: String?
    var icon: UIImage?
    var largeIcon: UIImage?
    var artists: [String] = []
    var backgroundColor: UIColor = UIColor.clearColor()
    
    init(index:Int) {
        let musicLibrary = MusicLibrary().library
        let playlistDictionary = musicLibrary[index]
        
        title = playlistDictionary["title"] as! String!
        description = playlistDictionary["description"] as! String!
        
        let iconName = playlistDictionary["icon"] as! String!
        icon = UIImage(named: iconName)
        
        let largeIconName = playlistDictionary["largeIcon"] as! String!
        largeIcon = UIImage(named: largeIconName)
        
        artists += playlistDictionary["artists"] as! [String]
        
        let colorsDictionary = playlistDictionary["backgroundColor"] as! [String:CGFloat]
        backgroundColor = rgbColorFromDictionary(colorsDictionary)
    }
    
    func rgbColorFromDictionary(colorsDictionary: [String: CGFloat]) -> UIColor {
        let red = colorsDictionary["red"]!
        let green = colorsDictionary["green"]!
        let blue = colorsDictionary["blue"]!
        let alpha = colorsDictionary["alpha"]!
        
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
}
