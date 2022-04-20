//
//  User.swift
//  AccountabilityBuddy
//
//  Created by Yanelys on 4/20/22.
//

import UIKit
import Parse

struct User {
    private var _firstName: String
    private var _uid: String
    
    var uid: String{
        return _uid
    }
    
    var firstName: String{
        return _firstName
    }
    init(uid: String, firstName: String){
        _uid = uid
        _firstName = firstName
    }
    
    
    
}
