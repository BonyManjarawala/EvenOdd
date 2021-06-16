//
//  ViewController.swift
//  EvenOdd
//
//  Created by DCS on 15/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Step 1
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Even / Odd", for: .normal)
        button.addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 6
        return button
    }()

    @objc private func handleEvent() {
        print("received..")
        
        let vc = EvenOddCheckVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Step 2
        view.addSubview(myButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // Step 3
        myButton.frame = CGRect(x: 40, y: (view.height / 2) - 30, width: view.width - 80, height: 60)
    }
}
