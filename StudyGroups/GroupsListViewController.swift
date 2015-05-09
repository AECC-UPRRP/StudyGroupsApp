//
//  ViewController.swift
//  StudyGroups
//
//  Created by Xiomara on 5/9/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import UIKit

class GroupsListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView = UITableView(frame: CGRectMake( 0.0,
                                                        0.0,
                                                        self.view.frame.width,
                                                        self.view.frame.height))
    
        self.tableView.registerClass(customCell.self, forCellReuseIdentifier: "Cell")
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.view.addSubview(self.tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    func dismissAction(sender: AnyObject?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
        
    // MAKR: - Table View Delegate Methods
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
        
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
        
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
        var cell = customCell(reuseIdentifier: "String")
        
        cell.textLabel?.text = "Hola"
        
        return cell
    }
        
    // MARK: - UITableViewDelegate Methods
        
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
            
    }
        
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 144.0
    }
}

