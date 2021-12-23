//
//  CustomTabView.swift
//  SwiftUITutorials
//
//  Created by Ahmet Kaan UZMAN on 23.12.2021.
//

import SwiftUI

struct CustomTabView: View {
    @State private var selectedIndex = CustomTabIndex.home
    var body: some View {
        VStack {
            Button("Reset") {
                selectedIndex = CustomTabIndex.home
            }
            TabView(selection: $selectedIndex) {
                StarView().tabItem {
                    Image(systemName: "star")
                    /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/

                }.tag(CustomTabIndex.home)
                HeartView().tabItem {
                    Image(systemName: "heart")
                    if selectedIndex == CustomTabIndex.heart {
                        /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/
                    }
                }.tag(CustomTabIndex.heart)
            }

        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

struct StarView: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    var body: some View {
        NavigationView {
            VStack {

                NavigationLink(destination: Text("Sample")) {
                    Label("Lightning", systemImage: "bolt.fill")
                }

                List {
                    ForEach(
                        fruits,
                        id: \.self
                    ) { fruit in
                        Text(fruit)
                    }
                }
                    .navigationTitle("Fruits")
                    .toolbar { EditButton() }
            }
        }
    }
}

struct HeartView: View {
    var body: some View {
        Text("Tab Content 2")
    }
}


