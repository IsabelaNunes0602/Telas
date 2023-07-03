//
//  TelaVerdeView.swift
//  Telas
//
//  Created by IFBIOTIC07 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeView: ViewDefault {
    
    var onTelaAzulTap: (() -> Void)?
    var onTelaVermelhaTap: (() -> Void)?
    
    var TelaAzulBotao = ButtomDefault(botao: "Tela Azul")
    var TelaVermelhaBotao = ButtomDefault(botao: "Tela Vermelha")
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.backgroundColor = .green
        self.addSubview(TelaAzulBotao)
        self.addSubview(TelaVermelhaBotao)
        
        TelaAzulBotao.addTarget(self, action: #selector(telaAzulTap), for: .touchUpInside)
        TelaVermelhaBotao.addTarget(self, action: #selector(telaVermelhaTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            TelaAzulBotao.widthAnchor.constraint(equalToConstant: 274.99),
            TelaAzulBotao.heightAnchor.constraint(equalToConstant: 82.64),
            TelaAzulBotao.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            TelaAzulBotao.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            TelaAzulBotao.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            TelaVermelhaBotao.widthAnchor.constraint(equalToConstant: 274.99),
            TelaVermelhaBotao.heightAnchor.constraint(equalToConstant: 82.64),
            TelaVermelhaBotao.topAnchor.constraint(equalTo: TelaAzulBotao.bottomAnchor, constant: 5),
            TelaVermelhaBotao.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            TelaVermelhaBotao.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
        ])
    }
    
    //MARK: - Actions
    @objc
    private func telaAzulTap() {
        onTelaAzulTap?()
    }
    
    @objc
    private func telaVermelhaTap() {
        onTelaVermelhaTap?()
    }
}
