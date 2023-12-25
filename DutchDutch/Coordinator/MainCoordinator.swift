//
//  AppCoordinator.swift
//  DutchDutch
//
//  Created by 계은성 on 2023/12/24.
//

import UIKit

//func coordinatorStart(nav: UINavigationController,
//                      present_coordinator: Coordinator) -> Coordinator {
//    // Main-Coordinator 생성
//    let mainCoordinator = MainCoordinator(navigationController: nav)
//
//    mainCoordinator.parentCoordinator = present_coordinator
//    mainCoordinator.start()
//    return mainCoordinator
//}


// MARK: - AppCoordinator
final class AppCoordinator: Coordinator {
    let nav: UINavigationController
    // 순환 참조 방지, weak 사용
    weak var parentCoordinator: Coordinator?
    
    var childCoordinators: [Coordinator] = []
    
    // 의존성 주입
    init(navigationController: UINavigationController) {
        self.nav = navigationController
    }
    
    func start() {
        self.showMainScreen()
    }
    
    /// 메인화면으로 이동
    func showMainScreen() {
        // Main-Coordinator 생성
        let mainCoordinator = MainCoordinator(navigationController: nav)
        mainCoordinator.parentCoordinator = self
        self.childCoordinators.append(mainCoordinator)
        mainCoordinator.start()
    }
}


// MARK: - MainViewController
final class MainCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    
    var childCoordinators: [Coordinator] = []
    
    var nav: UINavigationController
    
    // 의존성 주입
    init(navigationController: UINavigationController) {
        self.nav = navigationController
    }
    
    // MainViewController 띄우기
    func start() {
        // 뷰모델 인스턴스 생성 (이 부분이 추가됨)
        let mainViewModel = MainVM()
        // 뷰컨트롤러 인스턴스 생성 및 뷰모델 주입
        let mainVC = MainVC(viewModel: mainViewModel,
                            coordinator: self)
        // 화면 전환
        self.nav.pushViewController(mainVC, animated: true)
    }
    
    /// 채팅방으로 이동
    func chatRoomScreen() {
        
    }
    /// 플러스 버튼을 누르면 화면 이동
    func plusBtnScreen() {

    }
    
    func profileScreen() {
        
    }
}


final class PlusBtnCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?

    var childCoordinators: [Coordinator] = []

    var nav: UINavigationController

    // 의존성 주입
    init(navigationController: UINavigationController) {
        self.nav = navigationController
    }

    func start() {
        
    }
}
