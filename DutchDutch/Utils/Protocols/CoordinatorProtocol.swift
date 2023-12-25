//
//  CoordinatorProtocol.swift
//  DutchDutch
//
//  Created by 계은성 on 2023/12/24.
//

import UIKit

/// Coordinator 프로토콜 정의
protocol Coordinator: AnyObject {
    /// 부모 Coordinator에 대한 참조
    var parentCoordinator: Coordinator? { get set }
    
    /// 현재 Coordinator가 관리하는 하위 Coordinator들의 배열
    var childCoordinators: [Coordinator] { get set }
    
    /// 현재 Coordinator가 관리하는 UINavigationController
    var nav: UINavigationController { get }
    
    /// Coordinator의 시작 지점을 정의하는 메서드
    func start()
}
extension Coordinator {
    func removeChildCoordinator(child: Coordinator) {
        self.childCoordinators.removeAll { $0 === child }
    }
}
