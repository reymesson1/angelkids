//
//  UserViewModel.swift
//  angelkids
//
//  Created by Rey Messon on 8/28/24.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    
    init(){
        loadUsers()
    }

    // Example method to add a user
    func addUser(name: String) {
        // Create a new User object
        let newUser = User(id: Int64(users.count + 1), name: name)
        
        // Add the user to the database or local storage
        let userRepository = UserRepository()
        userRepository.insertUser(user: newUser)
        
        // Update the users list
        loadUsers()
    }

    func loadUsers() {
        let userRepository = UserRepository()
        users = userRepository.fetchUsers()
    }
    
    func deleteUser(user: User) {
        let userRepository = UserRepository()
        userRepository.deleteUser(user: user)
        loadUsers()
    }
}
