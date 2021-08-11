//
//  UserDetail.swift
//  CCWorkTest
//
//  Created by mac on 2021/8/11.
//

import Foundation

struct User {
    var id: String?
    var name: String?
    var attack: Int?
    var defense: Int?
}
struct AllData:Decodable {
    var ID: String?
    var Name: String?
    var Attack: Int?
    var Defense: Int?
}
