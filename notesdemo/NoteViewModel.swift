//
//  NoteViewModel.swift
//  notesdemo
//
//  Created by Christopher Jimenez on 8/18/15.
//  Copyright (c) 2015 greenpixels. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxViewModel
import RealmSwift

public class NoteViewModel: RxViewModel {
    
    var note: Note?
    
    /**
    Init
    
    :returns: <#return value description#>
    */
    public override init ()
    {
        super.init()
        
        self.didBecomeActive >- subscribeNext { [weak self] _ in
            
            if let strongSelf = self{
                
            }
        }
    }
    
    /**
    Add a notes into the Database
    
    :param: title  title of the note
    :param: detail description of the note
    */
    public func addNote(#title: String , detail: String){
        
        
        var note:Note = Note()
        
        note.id = String.generateUUID()
        note.title = title
        note.detail = detail
        
        //Init realm and save object
        let realm = Realm()
        
        //save object
        realm.write { () -> Void in
            realm.add(note, update: true)
        }
        
    }
    
    
    
    
   
}
