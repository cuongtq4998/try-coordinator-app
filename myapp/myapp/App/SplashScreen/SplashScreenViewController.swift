//
//  SplashScreenViewController.swift
//  myapp
//
//  Created by TQC on 7/25/24.
//

import UIKit

class SplashScreenViewController: UIViewController {
    private let viewModel: SplashScreenViewModel
    init(viewModel: SplashScreenViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "SplashScreenViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.viewModel.didFinish()
        }
    }

}
