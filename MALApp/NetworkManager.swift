//
//  NetworkManager.swift
//  MALApp
//
//  Created by Taro Altrichter on 12.03.24.
//

import UIKit

class NetworkManager {
    
    static let shared = NetworkManager()
    private let baseURL = "https://api.jikan.moe/v4"
    let decoder = JSONDecoder()
    
    
    func getData() async throws -> Data? {
        let endpoint = baseURL + "/top/anime?filter=bypopularity"
        
        guard let url = URL(string: endpoint) else {
            throw MALError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw MALError.invalidResponse
        }
        
        do {
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(Data.self, from: data)
        } catch {
            throw MALError.invalidData
        }
    }
    
}

enum MALError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}
