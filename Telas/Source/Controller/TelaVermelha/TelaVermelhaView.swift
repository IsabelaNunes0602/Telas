//
//  TelaVermelhaView.swift
//  Telas
//
//  Created by IFBIOTIC07 on 03/07/23.
//

import Foundation
import UIKit

class TelaVermelhaView: ViewDefault {
    
    var onTelaAzulTap: (() -> Void)?
    var onTelaVerdeTap: (() -> Void)?
    
    var TelaAzulBotao = ButtomDefault(botao: "Tela Azul")
    var TelaVerdeBotao = ButtomDefault(botao: "Tela Verde")
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.backgroundColor = .red
        self.addSubview(TelaAzulBotao)
        self.addSubview(TelaVerdeBotao)
        
        TelaAzulBotao.addTarget(self, action: #selector(telaAzulTap), for: .touchUpInside)
        TelaVerdeBotao.addTarget(self, action: #selector(telaVerdeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            TelaAzulBotao.widthAnchor.constraint(equalToConstant: 274.99),
            TelaAzulBotao.heightAnchor.constraint(equalToConstant: 82.64),
            TelaAzulBotao.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            TelaAzulBotao.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            TelaAzulBotao.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            TelaVerdeBotao.widthAnchor.constraint(equalToConstant: 274.99),
            TelaVerdeBotao.heightAnchor.constraint(equalToConstant: 82.64),
            TelaVerdeBotao.topAnchor.constraint(equalTo: TelaAzulBotao.bottomAnchor, constant: 5),
            TelaVerdeBotao.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            TelaVerdeBotao.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
        ])
    }
    
    //MARK: - Actions
    @objc
    private func telaAzulTap() {
        onTelaAzulTap?()
    }
    
    @objc
    private func telaVerdeTap() {
        onTelaVerdeTap?()
    }
}
