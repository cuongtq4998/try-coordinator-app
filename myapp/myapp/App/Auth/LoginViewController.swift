//
//  LoginViewController.swift
//  myapp
//
//  Created by TQC on 7/25/24.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
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
        bindingViewModel()
    }
    
    let bag = DisposeBag()
    private func bindingViewModel() {
        userNameTextField.rx.text
            .orEmpty
            .scan("") { (previous, new) -> String in
                if new.count > 6 {
                    return previous
                } else {
                    return new
                }
            }
            .subscribe({ [weak self] value in
                guard let self = self else { return }
                userNameTextField.text = value.element ?? ""
                viewModel.userName.accept(value.element ?? "")
            })
            .disposed(by: bag)
        
        viewModel.isValid
            .bind(to: loginButton.rx.isEnabled)
            .disposed(by: bag)
    }

}
