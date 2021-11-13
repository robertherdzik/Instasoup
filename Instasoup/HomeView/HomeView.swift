//
//  ContentView.swift
//  TestApp
//
//  Created by Robert Herdzik on 27/12/2020.
//

import SwiftUI

struct HomeView: View {
    private enum Constant {
        static let zeroEdgeInsets = EdgeInsets(top: 0,
                                               leading: 0,
                                               bottom: 0,
                                               trailing: 0)
    }

    @ObservedObject var viewModel: ViewModel

    var body: some View {
        VStack {
            HeaderView()
            List(viewModel.listItems) { item in
                switch item {
                case let .stories(stories):
                    makeStoriesView(stories: stories)
                case let .post(post):
                    makePostView(post: post)
                }
            }
            .listStyle(.plain)
            .frame(maxWidth: .infinity)
        }
    }

    private func makeStoriesView(stories: Stories) -> some View {
        StoriesView(stories: stories)
            .listRowInsets(.some(Constant.zeroEdgeInsets))
    }

    private func makePostView(post: Post) -> some View {
        PostView(post: post)
            .listRowInsets(.some(Constant.zeroEdgeInsets))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModelMock.makeFullMock())
    }
}
