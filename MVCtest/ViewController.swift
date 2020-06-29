//
//  ViewController.swift
//  MVCtest
//
//  Created by Yuki Shinohara on 2020/06/30.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

///Controller

class ViewController: UIViewController {
    let person = Person(firstName: "Tsuyoshi", lastName: "Domoto", age: 41, gender: "male", height: 166, weight: 58)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        ///ExampleViewのインスタンス
        let myLabel = ExampleView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        myLabel.configure(with: "\(person.firstName) \(person.lastName)")
        myLabel.center = view.center
        view.addSubview(myLabel)
    }


}

