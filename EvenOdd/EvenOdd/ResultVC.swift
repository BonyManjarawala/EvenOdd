//
//  ResultVC.swift
//  EvenOdd
//
//  Created by DCS on 15/06/21.
//

import UIKit

class ResultVC: UIViewController {
    
    var result = ""
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.backgroundColor = .systemFill
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(myLabel)
        
        myLabel.text = result
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 40, y: (view.height/2) - 30, width: view.width - 80, height: 60)
    }
}
