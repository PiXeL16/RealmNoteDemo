//
//  NotesViewModel.swift
//  notesdemo
//
//  Created by Christopher Jimenez on 8/18/15.
//  Copyright (c) 2015 greenpixels. All rights reserved.
//


import UIKit
import RxViewModel
import RxSwift
import RxCocoa
import RealmSwift


public class NotesViewModel: RxViewModel {
    
    
    let notes = Realm().objects(Note)
    
    var updateToken: NotificationToken?
    
    public let updateContentSignal =  PublishSubject<AnyObject?>()
    
    
    public override init()
    {
        
        super.init()
        
        // If there are update on our realm send update
        self.updateToken = Realm().addNotificationBlock { notification, realm in
        
            sendNext(self.updateContentSignal, nil)
        
        }
        
        self.didBecomeActive >- subscribeNext { [weak self] _ in
            
            if let strongSelf = self{
                
                strongSelf.active = false
                
            }
        }

    }
    
    
    /**
    Returns the number of items
    
    :returns: <#return value description#>
    */
    func numberOfItems()->Int{
        
        return notes.count
    }
    

    /**
    Return the note
    
    :param: indexPath <#indexPath description#>
    
    :returns: <#return value description#>
    */
    func noteAtIndex(indexPath: NSIndexPath)-> Note{
        
        return notes[indexPath.row]
    }

    
    
    
    
   
}
