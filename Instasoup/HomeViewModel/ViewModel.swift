//
//  ViewModel.swift
//  Instasoup
//
//  Created by Robert Herdzik on 13/11/21.
//

import Foundation

struct Post: Identifiable {
    var id = UUID().uuidString

    let profileImageAsset: String
    let userName: String
    let location: String
    let postImageAsset: String
    let likesValue: String
    let content: String
}

struct Story: Identifiable {
    var id = UUID().uuidString

    let profileAsset: String
    let profileName: String
}

struct Stories: Identifiable {
    var id = UUID().uuidString

    let list: [Story]
}

enum ListItem: Identifiable {
    case stories(Stories)
    case post(Post)

    var id: String {
        switch self {
        case let .stories(story):
            return story.id
        case let .post(post):
            return post.id
        }
    }
}

final class ViewModel: ObservableObject {
    @Published var listItems: [ListItem]

    init(listItems: [ListItem]) {
        self.listItems = listItems
    }
}
