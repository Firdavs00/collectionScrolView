//
//  ScrolViewController.swift
//  collectionScrolView
//
//  Created by MacBook Pro on 07/08/21.
//

import UIKit

class ScrolViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }

    // Mark: - Methods
    
    func initView()  {
        addNavigationBar()
    }
    func addNavigationBar(){
        let back = UIImage(named: "ic_back")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: back, style: .plain, target: self, action: #selector(leftTapped))
        title = "Scroll View"
        
    }
   
    
    
    // Mark: - Actions
    @objc func leftTapped(){
        navigationController?.popToRootViewController(animated: true)
        
    }

}
