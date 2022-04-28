//
//  MusicDataModel.swift
//  3rd-seminar
//
//  Created by Sua Han on 2022/04/23.
//

import UIKit

struct MusicDataModel {
    let albumCoverImageName: String
    var albumImage: UIImage? {
        return UIImage(named: albumCoverImageName)
    }
    let musicTitle: String
    let author: String
    let playTime: String
    var description: String? {
        return "\(author)·\(playTime)"
    }
}


