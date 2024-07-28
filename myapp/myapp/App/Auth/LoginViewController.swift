//
//  LoginViewController.swift
//  myapp
//
//  Created by TQC on 7/25/24.
//

import UIKit

class LoginViewController: UIViewController {
    private let viewModel: LoginViewModel
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "LoginViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
