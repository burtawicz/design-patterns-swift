//
//  SG_Real_ClientCode.swift
//  Patterns.RefactoringGuru
//
//  Created by Maxim Eremenko on 5/8/18.
//  Copyright © 2018 Eremenko Maxim. All rights reserved.
//

import XCTest

/**
 * Singleton Design Pattern
 *
 * Intent: Ensure that class has a single instance, and provide a global
 * point of access to it.
 */

class SG_Real_ClientCode_Tests: XCTestCase {
    
    func testSingleton_Real() {
        
        /// There are two view controllers.
        ///
        /// MessagesListVC displays a list of last messages from a user's chats.
        /// ChatVC displays a chat with a friend.
        ///
        /// FriendsChatService fetches messages from a server
        /// and provides all subscribers (view controllers in our example)
        /// with new and removed messages.
        ///
        /// FriendsChatService is injected to both view controllers.
        /// It can be implemented as an instance of a class
        /// as well as a global variable.
        ///
        /// In this example, it is important to have only one instance
        /// that performs resource-intensive work.
        
        let service = FriendsChatService.shared
        
        let listVC = MessagesListVC()
        listVC.update(messageService: service)
        
        let chatVC = ChatVC()
        chatVC.update(messageService: service)
        
        /// ... add view controllers to the navigation stack ...
    }
}
