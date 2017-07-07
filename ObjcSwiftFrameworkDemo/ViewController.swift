//
//  ViewController.swift
//  ObjcSwiftFrameworkDemo
//
//  Created by Robert Ryan on 7/7/17.
//  Copyright © 2017 Robert Ryan. All rights reserved.
//

import UIKit
import FooBarKit

class ViewController: UIViewController {

    lazy var foo = Foo()
    lazy var bar = Bar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        foo.delegate = self
        foo.performTask()
        
        bar.delegate = self
        bar.performTask()
    }
    
}

extension ViewController: FooDelegate {
    
    func didFoo() {
        NSLog("foo")
    }
    
}

extension ViewController: BarDelegate {
    
    func didBar() {
        NSLog("bar")
    }
    
}
