//
//  TelaVerdeViewController.swift
//  Telas
//
//  Created by IFBIOTIC07 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeViewController: UIViewController {
         
    var onTelaAzulTap: (() -> Void)?
    var onTelaVermelhaTap: (() -> Void)?
    
    lazy var telaVerdeView: TelaVerdeView = {
        
        let telaVerdeView = TelaVerdeView()
        telaVerdeView.onTelaAzulTap = {
            self.onTelaAzulTap?()
        }
        
        telaVerdeView.onTelaVermelhaTap = {
            self.onTelaVermelhaTap?()
        }

        return telaVerdeView
    }()
    
    override func loadView() {
        self.view = telaVerdeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Verde"
    }
    
}
