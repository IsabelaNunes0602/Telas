//
//  TelaAzulView.swift
//  Telas
//
//  Created by IFBIOTIC07 on 03/07/23.
//

import Foundation
import UIKit

class TelaAzulView: ViewDefault {
    
    var onTelaVerdeTap: (() -> Void)?
    
    var TelaVerdeBotao = ButtomDefault(botao: "Tela Verde")
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.backgroundColor = .blue
        self.addSubview(TelaVerdeBotao)
        
        TelaVerdeBotao.addTarget(self, action: #selector(telaVerdeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            TelaVerdeBotao.widthAnchor.constraint(equalToConstant: 274.99),
            TelaVerdeBotao.heightAnchor.constraint(equalToConstant: 82.64),
            TelaVerdeBotao.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            TelaVerdeBotao.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            TelaVerdeBotao.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57)
        ])
    }
   
    //MARK: - Actions
    @objc
    private func telaVerdeTap() {
        onTelaVerdeTap?()
    }
}
