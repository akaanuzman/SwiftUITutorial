//
//  SampleListView.swift
//  SwiftUITutorials
//
//  Created by Ahmet Kaan UZMAN on 9.12.2021.
//

import SwiftUI

struct SampleListView: View {
    private let items: Array<String> = [
        "chevron.left",
        "chevron.right",
        "chevron.up",
        "chevron.down",
        "chevron.up.chevron.down"
    ]
    var body: some View {
        List {
            Section(header: Text("Profile")
                .font(.title3), content: {
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Spacer()
                    Spacer()
                    HStack {
                        Image(systemName: "person.badge.plus")
                        Text("Person")
                        Spacer()
                        Image(systemName: "plus")
                    }
                }
            }
            )

            Section(header: Text("Items")
                .font(.title3), content: {
                HStack {
                    ForEach(items, id: \.self) { item in Image(systemName: item)
                    }
                }
            }
            )
        }
    }
}

struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
