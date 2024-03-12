//
//  Data.swift
//  MALApp
//
//  Created by Taro Altrichter on 12.03.24.
//

import Foundation

struct Data: Codable {
    let data: [Anime]
}

struct Anime: Codable {
    let title: String
}
