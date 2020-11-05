//
//  ViewController.swift
//  Tests
//
//  Created by SMBA on 04/11/2020.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let articleView = ArticleDetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        self.view.addSubview(articleView)
        articleView.frame = self.view.frame
    }


}

