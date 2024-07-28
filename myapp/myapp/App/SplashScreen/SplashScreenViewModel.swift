//
//  SplashScreenViewModel.swift
//  myapp
//
//  Created by TQC on 7/25/24.
//

import Combine

final class SplashScreenViewModel {
    private let rootCoordinator: AppCoordinator
    init(rootCoordinator: AppCoordinator) {
        self.rootCoordinator = rootCoordinator
    }
    
    func didFinish() {
        rootCoordinator.login()
    }
}