//
//  Data.swift
//  MALApp
//
//  Created by Taro Altrichter on 12.03.24.
//

import Foundation

struct Data: Codable, Hashable {
    let data: [Anime]
}

struct Anime: Codable, Hashable {
    let title: String
}
