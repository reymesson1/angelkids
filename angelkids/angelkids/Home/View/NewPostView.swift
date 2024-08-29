//
//  NewPostView.swift
//  angelkids
//
//  Created by user250318 on 8/28/24.
//

import Foundation
import SwiftUI

struct NewPostView: View {
    @Binding var isPresented: Bool
    @Binding var title: String
    @Binding var post: String
    @EnvironmentObject var viewModel: UserViewModel // Add the environment object

    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading) {
                    
                    Text("Create new post")
                        .font(Font.system(size: 16, weight: .bold))
                    
                    
                    TextField("Title", text: $title)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(6)
                        .padding(.bottom)

                    TextField("Write something...", text: $post)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(6)
                        .padding(.bottom)
                    
                    Spacer()
                }.padding()
            }
            .navigationBarTitle("New Post", displayMode: .inline)
            .navigationBarItems(leading: leading, trailing: trailing)
        }
    }
    
    var leading: some View{
        
        Button(action: {
            isPresented.toggle()
        }, label: {
            
            Text("Cancel")
        })
        
    }
    
    var trailing: some View{
        Button(action: {
            print("pressed")
            if !title.isEmpty && !post.isEmpty {
                            viewModel.addUser(name: title) 
                            isPresented.toggle()
                        }
            
        }, label: {
            Text("Post")
        })
    }
    
}
