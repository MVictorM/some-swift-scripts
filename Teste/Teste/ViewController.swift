//
//  ViewController.swift
//  Teste
//
//  Created by Victor Miranda de Melo on 23/04/18.
//  Copyright © 2018 Victor Miranda de Melo. All rights reserved.
//

import UIKit

class Pergunta {
    var enunciado: String
    var respostaCorreta: String
    init(enun enunciado: String, resp respostaCorreta: String) {
        self.enunciado = enunciado
        self.respostaCorreta = respostaCorreta
    }
    func estaCorreta(resp resposta: String) -> Bool{
        return resposta.lowercased() == self.respostaCorreta.lowercased()
    }
}

class ViewController: UIViewController {
    
    var score = 0
    var index = 0
    
    @IBOutlet weak var questLabel: UILabel!
    @IBOutlet weak var answerField: UITextField!
    @IBAction func answerBtn(_ sender: UIButton) {
        if(index > -1) {
            if(perguntas[index].estaCorreta(resp: answerField.text!)) {
                score += 1
            }
            if(index < perguntas.count - 1) {
                index += 1
                questLabel.text = perguntas[index].enunciado
                answerField.text = ""
            } else {
                endGame();
            }
        } else {
            answerField.isHidden = false
            index += 1
            questLabel.text = perguntas[index].enunciado
            answerField.text = ""
        }
        
    }
    
    var perguntas = [
        Pergunta(enun: "A cada quantos anos acontece a copa do mundo?", resp: "4"),
        Pergunta(enun: "Quem foi o melhor jogador da última copa?", resp: "Messi"),
        Pergunta(enun: "Quem é o melhor jogador do mundo?", resp: "cr7"),
        Pergunta(enun: "Qual é o time que possui mais títulos da Champions League?", resp: "Real Madri"),
        Pergunta(enun: "Qual é o freguês do Real Madri?", resp: "Barcelona"),
        Pergunta(enun: "Qual é o melhor time de pernambuco", resp: "Náutico"),
        Pergunta(enun: "Qual é o maior atacante da história?", resp: "Kuki"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questLabel.text = perguntas[index].enunciado
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func endGame() {
        questLabel.text = "Fim de jogo! Seu score foi: \(score)"
        answerField.isHidden = true
        index = -1
        score = 0
    }
    
}

