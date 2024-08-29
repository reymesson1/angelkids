//
//  HomeView.swift
//  angelkids
//
//  Created by Rey Messon on 8/28/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: UserViewModel
    @State private var isPresentNewPost = false
    @State private var title = ""
    @State private var post = ""
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.users.isEmpty {
                    Text("No items")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    List {
                        ForEach(viewModel.users, id: \.id) { item in
                            VStack(alignment: .leading) {
                                Text(item.name)
                            }
                        }
                    }
                    .listStyle(InsetListStyle())
                }
            }
            .navigationBarTitle("Groceries")
            .navigationBarItems(trailing: plusButton)
        }
        .sheet(isPresented: $isPresentNewPost) {
            NewItemView(isPresented: $isPresentNewPost, title: $title)
        }
    }
    
    var plusButton: some View {
        Button(action: {
            isPresentNewPost.toggle()
        }, label: {
            Image(systemName: "plus")
        })
    }
}

#Preview {
    HomeView()
        .environmentObject(UserViewModel())
}
