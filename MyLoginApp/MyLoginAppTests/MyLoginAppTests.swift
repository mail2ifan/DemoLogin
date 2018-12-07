//
//  MyLoginAppTests.swift
//  MyLoginAppTests
//
//  Created by Mobility on 07/12/18.
//  Copyright © 2018 Iyyappan. All rights reserved.
//

import XCTest
@testable import MyLoginApp

class MyLoginAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //CHECKING DEFAULT USERNAME
    func testMyLoginUserName() {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! LoginViewController
        let _ = login.view
        XCTAssertEqual("Test123", login.defaultUserName)
    }
    
    //CHECKING DEFAULT PASSWORD
    func testMyLoginPassword() {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! LoginViewController
        let _ = login.view
        XCTAssertEqual("Test@123", login.defaultPassword)
    }
    
    func testMyLoginUserNamePlaceHolder() {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! LoginViewController
        let _ = login.view
        XCTAssertEqual("Enter User Name", login.txtUserName.placeholder)
    }
    
    func testMyLoginPasswordPlaceHolder() {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! LoginViewController
        let _ = login.view
        XCTAssertEqual("Enter Password", login.txtPassword.placeholder)
    }
}
