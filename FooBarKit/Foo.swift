//
//  Foo.swift
//  MyApp
//
//  Created by Robert Ryan on 7/7/17.
//  Copyright © 2017 Robert Ryan. All rights reserved.
//

import Foundation

public protocol FooDelegate: NSObjectProtocol {
    func didFoo()
}

public class Foo: NSObject {

    public weak var delegate: FooDelegate?
    
    public func performTask() {
        NSLog("Foo.performTask")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.delegate?.didFoo()
        }
    }
}
