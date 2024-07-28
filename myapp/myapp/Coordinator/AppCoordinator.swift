//
//  AppCoordinator.swift
//  myapp
//
//  Created by TQC on 7/25/24.
//

import UIKit

final class AppCoordinator: Coordinator {
    private let window: UIWindow
    private let rootNavigatorController: UINavigationController = UINavigationController()
    init(window: UIWindow) {
        self.window = window
        super.init(navigatorController: rootNavigatorController)
        self.assignWindow(window: window)
    }
    
    private func assignWindow(window: UIWindow) {
        window.rootViewController = rootNavigatorController
        window.makeKeyAndVisible()
    }
    
    override func start() {
        let splashViewModel = SplashScreenViewModel(rootCoordinator: self)
        let splashScreen = SplashScreenViewController(viewModel: splashViewModel)
        navigatorController.pushViewController(splashScreen, animated: false)
    }
    
    func goHome() {
        
    }
    
    func login() {
        let loginViewModel = LoginViewModel()
        let loginViewController = LoginViewController(viewModel: loginViewModel)
        navigatorController.present(loginViewController, animated: false)
    }
}

