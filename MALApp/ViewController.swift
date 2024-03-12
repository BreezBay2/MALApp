//
//  ViewController.swift
//  MALApp
//
//  Created by Taro Altrichter on 12.03.24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        
        Task {
            do {
                let data = try await NetworkManager.shared.getData()
                print(data)
            }
        }
        // Do any additional setup after loading the view.
    }


}

