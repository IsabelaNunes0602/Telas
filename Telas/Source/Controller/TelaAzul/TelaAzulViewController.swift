//
//  TelaAzulViewController.swift
//  Telas
//
//  Created by IFBIOTIC07 on 03/07/23.
//

import Foundation
import UIKit

class TelaAzulViewController: UIViewController {
    
    var onTelaVerdeTap: (() -> Void)?
    
    lazy var telaAzulView: TelaAzulView = {
        
        let telaAzulView = TelaAzulView()
        telaAzulView.onTelaVerdeTap = {
            self.onTelaVerdeTap?()
        }

        return telaAzulView
    }()
    
    override func loadView() {
        self.view = telaAzulView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Azul"
    }
    
}
