//
//  Comment.swift
//  MVP-Storyboard-2
//
//  Created by Ruslan on 09.02.2022.
//

import Foundation

struct Comment: Decodable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
