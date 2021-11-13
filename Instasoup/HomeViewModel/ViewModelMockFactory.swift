//
//  ViewModelMockFactory.swift
//  Instasoup
//
//  Created by Robert Herdzik on 13/11/21.
//

import Foundation

struct HomeViewModelMock {
    static func makeFullMock() -> ViewModel {
        .init(listItems: [
            .stories(makeStories()),
            .post(makeMockPost1()),
            .post(makeMockPost2()),
            .post(makeMockPost3()),
        ])
    }
    
    static func makeStories() -> Stories {
        let profilePictures = [
            "profile_1",
            "profile_2",
            "profile_3",
            "profile_4",
            "profile_5",
            "profile_6",
        ]
        let names = [
            "Milady",
            "freshii🥦",
            "who_know",
            "🚴‍♂️Cyclist_fanatic",
            "FreeMind",
            "xyz",
        ]
        
        return .init(list: zip(profilePictures, names).map {
            .init(profileAsset: $0,
                  profileName: $1)
        })
    }
    
    static func makeMockPost1() -> Post {
        .init(profileImageAsset: "profile_5",
              userName: "FreeMind",
              location: "Valencia",
              postImageAsset: "post_img_1",
              likesValue: "1,002 likes",
              content: "Just had this super great #tomate 🍅 #soup 🙌")
    }
    
    static func makeMockPost2() -> Post {
        .init(profileImageAsset: "profile_4",
              userName: "🚴‍♂️Cyclist_fanatic",
              location: "Warsaw",
              postImageAsset: "post_img_2",
              likesValue: "342 likes",
              content: "Thank you all for yesterday #party 🎉, was pleasure to spend time with you!")
    }
    
    static func makeMockPost3() -> Post {
        .init(profileImageAsset: "profile_2",
              userName: "freshii🥦",
              location: "London",
              postImageAsset: "post_img_3",
              likesValue: "143 likes",
              content: "What am I doing with this 😩?")
    }
}
