//
//  MusicTableViewCell.swift
//  3rd-seminar
//
//  Created by Sua Han on 2022/04/23.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    
    // Cell을 구분하기 위한 Identifier
    static let identifier = "MusicTableViewCell"
    
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var musicDescriptionLabel: UILabel!
    @IBOutlet weak var moveButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // 각 Cell 별로 다른 정보가 표시되어야 하므로, 값을 넣어주는 함수를 생성
    func setData(_ musicData: MusicDataModel) {
        albumCoverImage.image = musicData.albumImage
        musicTitleLabel.text = musicData.musicTitle
        musicDescriptionLabel.text = musicData.description
    }
}

// 뷰컨트롤러에 만들어도 되고 이렇게 공통으로 접근할 수 있게 맹글어도 댐
extension MusicDataModel {
    static let sampleData: [MusicDataModel] = [
        MusicDataModel(albumCoverImageName: "albumCover01", musicTitle: "긴 밤(feat. GIRIBOY)", author: "Seori", playTime: "3:31"),
        MusicDataModel(albumCoverImageName: "albumCover02", musicTitle: "Running Through The Night", author: "서리", playTime: "3:38"),
        MusicDataModel(albumCoverImageName: "albumCover03", musicTitle: "instagram", author: "DEAN(딘)", playTime: "4:15"),
        MusicDataModel(albumCoverImageName: "albumCover04", musicTitle: "잊어버리지마(feat. 태연(TAEYEON))", author: "Crush", playTime: "3:39"),
        MusicDataModel(albumCoverImageName: "albumCover05", musicTitle: "GANADARA(feat. 아이유)", author: "박재범", playTime: "3:24"),
        MusicDataModel(albumCoverImageName: "albumCover06", musicTitle: "널 너무 모르고", author: "헤이즈(Heize)", playTime: "3:09"),
        MusicDataModel(albumCoverImageName: "albumCover07", musicTitle: "스물다섯, 스물하나", author: "자우림", playTime: "4:44"),
        MusicDataModel(albumCoverImageName: "albumCover08", musicTitle: "Joker(feat. JAMIE)", author: "BIG Naughty (서동현)", playTime: "3:31")
    ]
}
