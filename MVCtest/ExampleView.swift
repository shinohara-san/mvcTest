//
//  ExampleView.swift
//  MVCtest
//
//  Created by Yuki Shinohara on 2020/06/30.
//  Copyright © 2020 Yuki Shinohara. All rights reserved.
//

import UIKit

///View

class ExampleView: UIView {
    
    private var label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.backgroundColor = .black
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        addSubview(label)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with name: String){
        label.text = name
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(
            x: 10,
            y: 10,
            width: frame.size.width - 20,
            height: frame.size.height - 20
        )
    }
}
