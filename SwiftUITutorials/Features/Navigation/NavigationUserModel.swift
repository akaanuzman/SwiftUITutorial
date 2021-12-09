//
//  NavigationUserModel.swift
//  SwiftUITutorials
//
//  Created by Ahmet Kaan UZMAN on 10.12.2021.
//

import Foundation

struct NavigationUserModel: Identifiable {
    var id: UUID = UUID()
    let name: String
}

extension NavigationUserModel {
    /// Sample User Model
    static let users : [NavigationUserModel] = [
        NavigationUserModel(name: "hello"),
        NavigationUserModel(name: "hello1"),
        NavigationUserModel(name: "hello2"),
    ]
    
    static let fakeUser : NavigationUserModel = NavigationUserModel(name: "fake")
}
