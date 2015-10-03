//
//  ViewController.swift
//  Algorhythm
//
//  Created by Naman Priyadarshi on 9/17/15.
//  Copyright (c) 2015 Naman Priyadarshi. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {
    
    var playlistsArray: [UIImageView] = []
    @IBOutlet weak var playlistImageView0: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playlistsArray.append(playlistImageView0)
        
        
        let playlist = Playlist(index: 0)
        playlistImageView0.image = playlist.icon

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetailSegue" {
            let playlistDetailViewController = segue.destinationViewController as! PlaylistDetailViewController
            playlistDetailViewController.playlist = Playlist(index: 0)
            
        }
    }

    @IBAction func showPlaylistDetail(sender: AnyObject) {
        performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
        
        
        
    }
    
    
    
}

