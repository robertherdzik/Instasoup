//
//  ActionIconType.swift
//  Instasoup
//
//  Created by Robert Herdzik on 14/11/2021.
//

import UIKit

enum ActionIconType: String {
    private enum Constant {
        static let defaultSize: CGSize = .init(width: 30,
                                               height: 30)
    }

    case fav = "fav_icon"
    case comment = "comment_icon"
    case message = "msg_icon"
    case save = "save_icon"
    case more = "more_icon"
    case addPost = "add_post_icon"

    var defaultSize: CGSize {
        switch self {
        case .fav,
             .comment,
             .message,
             .save,
             .addPost,
             .more:
            return Constant.defaultSize
        }
    }
}
