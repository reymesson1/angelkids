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
    func addUser(name: String) {
        let newUser = User(id: Int64(users.count + 1), name: name)
        
        let userRepository = UserRepository()
        userRepository.insertUser(user: newUser)
        
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
