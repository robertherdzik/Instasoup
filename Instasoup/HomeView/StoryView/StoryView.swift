//
//  StoryView.swift
//  Instasoup
//
//  Created by Robert Herdzik on 14/11/2021.
//

import SwiftUI

struct StoryView: View {
    private enum Constant {
        enum Image {
            static let sideLenght: CGFloat = 80
            static let cornerRadius: CGFloat = 80
        }

        static let strokeLineWidth: CGFloat = 3
        static let shadowRadius: CGFloat = 2
    }

    let story: Story

    var body: some View {
        VStack {
            Image(story.profileAsset)
                .resizable()
                .frame(width: Constant.Image.sideLenght,
                       height: Constant.Image.sideLenght,
                       alignment: .leading)
                .clipShape(Capsule())
                .overlay(alignment: .center) {
                    RoundedRectangle(cornerRadius: Constant.Image.cornerRadius)
                        .stroke(.orange, lineWidth: Constant.strokeLineWidth)
                        .shadow(radius: Constant.shadowRadius)
                }
            Text(story.profileName)
                .frame(maxWidth: 90)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(story: HomeViewModelMock.makeStories().list.first!)
            .border(.pink)
    }
}
