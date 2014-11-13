//
//  ViewController.swift
//  002ADPXYIET(open_in)
//
//  Created by JNYJ on 14-11-12.
//  Copyright (c) 2014年 JNYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIDocumentInteractionControllerDelegate {

	@IBOutlet var button_Openin : UIButton!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func event_openin(){
		var openIn_  = Openin()
		openIn_.setParentViewController(self, rectInView: self.button_Openin.frame)

//		NSString *path = [[NSBundle mainBundle] pathForResource:@"provinces" ofType:@"plist"];
		var string_path : NSString! = NSBundle.mainBundle().pathForResource("JNYJ", ofType: "jpg")
		var url_ : NSURL! = NSURL(fileURLWithPath: string_path);
		if let item = url_ {
			openIn_.selectApp4Openin(item)
		}
	}

}

