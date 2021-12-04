//
//  ContentView.swift
//  SwiftUITutorials
//
//  Created by Ahmet Kaan UZMAN on 5.12.2021.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        sampleStackView()
    }

    fileprivate func sampleHorizontalView() -> some View {
        return HStack {
            Spacer().frame(width: 50)
            Color.red
            Text("Kaan Uzman")
            Text("Kaan Uzman")
            Text("Kaan Uzman")
            Color.red
            Spacer().frame(width: 50)
        }
    }

    fileprivate func sampleVerticalView() -> some View {
        return VStack {
            Spacer().frame(width: 50)
            Color.red
            Text("Kaan Uzman")
            Text("Kaan Uzman")
            Text("Kaan Uzman")
            Color.red
            Spacer().frame(width: 50)
        }
    }

    fileprivate func sampleStackView() -> some View {
        return ZStack(alignment: Alignment.top) {
            Spacer().frame(width: 50)
            Color.red
            Text("Kaan Uzman1")
            Text("Kaan Uzman  2")
            Text("Kaan Uzman   3")
            Spacer().frame(width: 50)
        }
    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View { ContentView() }
}
