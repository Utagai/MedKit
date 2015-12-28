//
//  DetailViewController.swift
//  Project BlackSky
//
//  Created by Deven  on 11/16/15.
//  Copyright © 2015 Hurt Enterprises. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        
        let getStarted = UIButton()
        getStarted.setTitle("Get Started", forState: .Normal)
        getStarted.setTitleColor(UIColor.blueColor(), forState: .Normal)
        getStarted.frame = CGRectMake((screenSize.width-120)/2, screenSize.height/2 + 150, 120, 30) // X, Y, width, height
        getStarted.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
        self.view.addSubview(getStarted)
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pressed(sender: UIButton!) {
        
        let loginPage:LoginPage = LoginPage()
        self.presentViewController(loginPage, animated: true, completion: nil)
        
    }
}
