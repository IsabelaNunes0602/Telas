//
//  TelaVermelhaViewController.swift
//  Telas
//
//  Created by IFBIOTIC07 on 03/07/23.
//

import Foundation
import UIKit

class TelaVermelhaViewController: UIViewController {
    
    var onTelaAzulTap: (() -> Void)?
    var onTelaVerdeTap: (() -> Void)?
    
    lazy var telaVermelhaView: TelaVermelhaView = {
        
        let telaVermelhaView = TelaVermelhaView()
        telaVermelhaView.onTelaAzulTap = {
            self.onTelaAzulTap?()
        }
        
        telaVermelhaView.onTelaVerdeTap = {
            self.onTelaVerdeTap?()
        }

        return telaVermelhaView
    }()
    
    override func loadView() {
        self.view = telaVermelhaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Vermelha"
    }
    
}
