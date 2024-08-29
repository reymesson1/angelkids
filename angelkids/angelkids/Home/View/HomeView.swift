//
//  HomeView.swift
//  angelkids
//
//  Created by user250318 on 8/28/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel : UserViewModel
    @State var isPresentNewPost = false
    @State var title = ""
    @State var post = ""
    var body: some View {

        NavigationView {
            
            List {
                
                ForEach( viewModel.users, id: \.id ) { item in
                    
                    NavigationLink(
                    
                        destination: Text("Destination"), label: {
                            VStack(alignment: .leading){
                                Text(item.name)
                                
                            }
                        }
                    )
                                }
            }.listStyle(InsetListStyle())
            
            
            .navigationBarTitle("Posts")
            .navigationBarItems(trailing: plusButton)
        }.sheet(isPresented: $isPresentNewPost, content: {
            NewPostView(isPresented: $isPresentNewPost, title: $title, post: $post)
        })

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
}
