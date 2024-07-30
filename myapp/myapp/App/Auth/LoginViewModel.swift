//
//  LoginViewModel.swift
//  myapp
//
//  Created by TQC on 7/25/24.
//

import Foundation
import RxSwift
import RxRelay

final class LoginViewModel {
    let userName = BehaviorRelay<String>(value: "")
    
    var isValid: Observable<Bool> {
        return userName.asObservable()
            .map { value in
                return value.count == 6
            }
    }
}
