//
//  NavigationUsers.swift
//  SwiftUITutorials
//
//  Created by Ahmet Kaan UZMAN on 10.12.2021.
//

import SwiftUI

struct NavigationUsers: View {
    @State private var isPresented: Bool = false
    var body: some View {
        NavigationView {
            List(NavigationUserModel.users) { data in
                NavigationLink {
                    UserViewDetail(user: data)
                } label: {
                    Text(data.name)
                }
            }.sheet(isPresented: $isPresented, onDismiss: {
                print("")
            }, content: {
                Button("Close") {
                    isPresented.toggle()
                }
            }
            ).listStyle(.grouped).navigationTitle("Users").toolbar {
                ToolbarItem {
                    Button("Close") {
                        isPresented.toggle()
                    }
                }
               
            }
        }
    }
}

struct NavigationUsers_Previews: PreviewProvider {
    static var previews: some View {
        NavigationUsers()
    }
}
