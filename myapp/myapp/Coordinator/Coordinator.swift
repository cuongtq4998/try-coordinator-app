//
//  Coordinator.swift
//  myapp
//
//  Created by TQC on 7/25/24.
//

import UIKit

class Coordinator {
    var navigatorController: UINavigationController
    init(navigatorController: UINavigationController) {
        self.navigatorController = navigatorController
    }
    
    func start() { }
    
    func startFor(coordinator: Coordinator){ }
    
    func didFinishFor(coordinator: Coordinator){ }
    
    func removeChildCoordinators(){ }
}

