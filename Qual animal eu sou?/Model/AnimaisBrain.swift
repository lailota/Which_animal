//
//  AnimaisBrain.swift
//  Qual animal eu sou?
//
//  Created by Laila Guzzon Hussein Lailota on 03/12/20.
//

import Foundation

struct AnimaisBrain {
    var animaisNumber = 0
    
    let animais = [
        Animais(pergunta: "Você acha que eu sou um animal fofinho ou feroz?", resp1: "Fofinho com certeza!", resp1Destino: 2, resp2: "Feroz, definitivamente!", resp2Destino: 1),
        Animais(pergunta: "Você acha que meu habitat é aquático ou terrestre?", resp1: "Provavelmente aquático", resp1Destino: 3, resp2: "Deve ser terrestre", resp2Destino: 4),
        Animais(pergunta: "Eu tenho pelos?", resp1: "Com certeza!", resp1Destino: 5, resp2: "Claro que não!", resp2Destino: 6),
        Animais(pergunta: "Uau! Isso mesmo! Eu, o Tubarão Branco sou muito feroz e vivo na água! Conseguiu adivinhar que era eu?", resp1: "Sim! Consegui!", resp1Destino: 0, resp2: "Não, mas cheguei perto", resp2Destino: 0),
        Animais(pergunta: "Isso aí! Eu, o Tigre, sou um predador feroz e meu habitat é terrestre. Não se engane por eu ser fofo! Conseguiu adivinhar que era eu?", resp1: "Sim! Foi muito fácil", resp1Destino: 0, resp2: "Não, mas quase acertei", resp2Destino: 0),
        Animais(pergunta: "Hehehe a descrição se encaixa em vários animais, mas sou eu, a Lhama! Conseguiu adivinhar que era eu?", resp1: "Sim! Amo Lhamas!", resp1Destino: 0, resp2: "Não, mas você é mesmo fofa", resp2Destino: 0),
        Animais(pergunta: "Oi! Sou eu, o Golfinho! Sou muito fofinho né? Conseguiu adivinhar que era eu?", resp1: "Sim! Golfinhos são fofos demais!", resp1Destino: 0, resp2: "Não, mas você é fofinho mesmo!", resp2Destino: 0)
    ]
    
    func getQuestionTitle() -> String {
        return animais[animaisNumber].pergunta
    }
    
    func getChoice1() -> String {
        return animais[animaisNumber].resp1
    }
    
    func getChoice2() -> String {
        return animais[animaisNumber].resp2
    }
    
    mutating func nextQuestion(_ userChoice: String) {
        let currentAnimal = animais[animaisNumber]
        if userChoice == currentAnimal.resp1 {
            animaisNumber = currentAnimal.resp1Destino
        } else if userChoice == currentAnimal.resp2 {
            animaisNumber = currentAnimal.resp2Destino
        }
    }
    
    func changeAnimal() -> Int {
        return animaisNumber
    }
}
