//
//  PostData.swift
//  H4XER NEWS
//
//  Created by Ahmd Amr on 4/11/20.
//  Copyright © 2020 Ahmd Amr. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let points: Int
    let title: String
    let url: String?
    let objectID: String
    var id: String {
        return objectID
    }
}
