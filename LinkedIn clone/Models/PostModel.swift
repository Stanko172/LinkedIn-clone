//
//  PostModel.swift
//  LinkedIn clone
//
//  Created by Stanko Bebek on 26. 10. 2023..
//


import Foundation
import Combine

import Foundation

struct PostModel: Identifiable, Codable, Hashable {
    var id: String
    var isLiked: Bool
    var reactionNumber: Int
    var commentNumber: Int
    var repostNumber: Int
    var comments: [Comment]
    var picture: String
    var user: User
    var timePosted: String
}

struct Comment: Identifiable, Codable, Hashable {
    var id: String
    var content: String
    var timePosted: String
    var user: User
}

struct User: Identifiable, Codable, Hashable {
    var id: String
    var name: String
    var avatar: String
    var description: String
}


final class ModelData: ObservableObject {
    var posts: [PostModel] = load("posts.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}








