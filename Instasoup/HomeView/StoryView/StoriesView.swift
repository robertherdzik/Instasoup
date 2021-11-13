//
//  StoriesView.swift
//  Instasoup
//
//  Created by Robert Herdzik on 14/11/2021.
//

import SwiftUI

struct StoriesView: View {
    private enum Constant {
        enum ScrollView {
            static let height: CGFloat = 120
        }
    }

    let stories: Stories

    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                Spacer()
                ForEach(stories.list) { story in
                    StoryView(story: story)
                }
                Spacer()
            }
        }
        .frame(height: Constant.ScrollView.height)
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(stories: HomeViewModelMock.makeStories())
            .border(.pink)
    }
}
