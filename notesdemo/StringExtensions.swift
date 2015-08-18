//
//  StringExtensions.swift
//  notesdemo
//
//  Created by Christopher Jimenez on 8/18/15.
//  Copyright (c) 2015 greenpixels. All rights reserved.
//

import UIKit

/// - String helpers and utils
extension String {
    
    
    /**
    Generates a UUID String
    
    :returns: UUID string
    */
    static func generateUUID()->String
    {
        return NSUUID().UUIDString
    }
    
    
    
   
}
