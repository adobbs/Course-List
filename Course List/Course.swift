//
//  Course.swift
//  Course List
//
//  Created by Andy Dobbs on 1/11/24.
//

import Foundation

struct Course : Identifiable, Codable {
    var id: Int
    var image: String
    var title: String
    var subtitle: String
}
