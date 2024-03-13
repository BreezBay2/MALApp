//
//  AnimeViewCell.swift
//  MALApp
//
//  Created by Taro Altrichter on 13.03.24.
//

import UIKit
import SwiftUI

class AnimeCell: UICollectionViewCell {
    
    static let reuseID = "AnimeCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(anime: Anime) {
        contentConfiguration = UIHostingConfiguration {
            AnimeView(anime: anime)
        }
    }
}
