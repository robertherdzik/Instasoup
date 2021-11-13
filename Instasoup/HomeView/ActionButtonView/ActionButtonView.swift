//
//  ActionButton.swift
//  Instasoup
//
//  Created by Robert Herdzik on 14/11/2021.
//

import SwiftUI

struct ActionButtonView: View {
    let asset: ActionIconType

    var body: some View {
        Image(asset.rawValue)
            .resizable()
            .frame(width: asset.defaultSize.width,
                   height: asset.defaultSize.height,
                   alignment: .leading)
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView(asset: .fav)
            .border(.pink)
    }
}
