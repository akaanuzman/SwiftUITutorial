//
//  CircleImageTextView.swift
//  SwiftUITutorials
//
//  Created by Ahmet Kaan UZMAN on 9.12.2021.
//

import SwiftUI
import Kingfisher

struct CircleImageTextView: View {

    let imageUrl: String
    let imageText: String

    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl)!).fade(duration: 2).resizable().frame(width: 200, height: 200, alignment: .center).clipShape(Circle())
            Text("Test Text").bold().italic()
        }
    }
}

struct CircleImageTextView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageTextView(imageUrl: "https://picsum.photos/200", imageText: "test").previewLayout(.sizeThatFits)
    }
}
