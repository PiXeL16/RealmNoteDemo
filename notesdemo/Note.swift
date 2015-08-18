//
//  Note.swift
//  notesdemo
//
//  Created by Christopher Jimenez on 8/18/15.
//  Copyright (c) 2015 greenpixels. All rights reserved.
//

import UIKit
import RealmSwift

public class Note: Object {


    dynamic var id:     String  = ""
    dynamic var title:  String  = ""
    dynamic var detail: String  = ""
    
    
    /**
    Creates the primary key of the entiry
    
    :returns: String of the field of th primary key
    */
    override public static func primaryKey() -> String?
    {
        return "id"
    }


}
