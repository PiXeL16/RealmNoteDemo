//
//  AddNoteViewController.swift
//  notesdemo
//
//  Created by Christopher Jimenez on 8/18/15.
//  Copyright (c) 2015 greenpixels. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    
    lazy var viewModel = NoteViewModel()

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var detailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let submitButton = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Done, target: self, action:"addPress:")
        
        
         self.navigationItem.rightBarButtonItem = submitButton

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPress(sender: AnyObject) {
        
        
        self.viewModel.addNote(title: self.titleTextField.text, detail: self.detailTextField.text)
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
