//
//  NewItemView.swift
//  angelkids
//
//  Created by Rey Messon on 8/28/24.
//

import Foundation
import SwiftUI

struct NewItemView: View {
    @Binding var isPresented: Bool
    @Binding var title: String
    @EnvironmentObject var viewModel: UserViewModel // Add the environment object

    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading) {
                                        
                    TextField("Name", text: $title)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(6)
                        .padding(.bottom)
                    
                    Spacer()
                }.padding()
            }
            .navigationBarTitle("Add Items", displayMode: .inline)
            .navigationBarItems(leading: leading, trailing: trailing)
        }
    }
    
    var leading: some View{
        
        Button(action: {
            isPresented.toggle()
        }, label: {
            
            Text("Back")
        })
        
    }
    
    var trailing: some View{
        Button(action: {
            if !title.isEmpty {
                            viewModel.addUser(name: title) 
                            isPresented.toggle()
                        }
            
        }, label: {
            Text("Add")
        })
    }
    
}
