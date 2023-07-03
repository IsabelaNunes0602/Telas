//
//  TelaVermelhaCoordinator.swift
//  Telas
//
//  Created by IFBIOTIC07 on 03/07/23.
//

import Foundation
import UIKit

class TelaVermelhaCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = TelaVermelhaViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaAzulTap = {
            self.gotoTelaAzul()
        }
        
        viewController.onTelaVerdeTap = {
            self.gotoTelaVerde()
        }
    }
    
    func gotoTelaAzul() {
        let coordinator = TelaAzulCoordinator(navigationController: navigationController)
        coordinator.start()

    }
    
    func gotoTelaVerde() {
        self.navigationController.popViewController(animated: true)
    }
}
