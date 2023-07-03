//
//  TelaVerdeCoordinator.swift
//  Telas
//
//  Created by IFBIOTIC07 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = TelaVerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaAzulTap = {
            self.gotoTelaAzul()
        }
        
        viewController.onTelaVermelhaTap = {
            self.gotoTelaVermelha()
        }
    }
    
    func gotoTelaAzul() {
        self.navigationController.popViewController(animated: true)
    }
    
    func gotoTelaVermelha() {
        let coordinator = TelaVermelhaCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
