//: Playground - noun: a place where people can play

import UIKit

var pontuacao = 0

struct Pergunta {
    var enunciado: String
    var resposta: String
}

var pergunta1 = Pergunta(enunciado: "Quantas copas do mundo o brasil possui?", resposta: "5")
var pergunta2 = Pergunta(enunciado: "Quem ganhou a última copa?", resposta: "Alemanha")

//array de perguntas
var perguntas = [pergunta1, pergunta2]

//recebe as respostas e exibe a pontuação
print("Inicializando o Trivia. Boa sorte!")
for pergunta in perguntas{
    print(pergunta.enunciado)
    let resposta = readLine()
    if(resposta == pergunta.resposta) {
        print("Certa resposta!")
        pontuacao += 1
    } else {
        print("Resposta errada :/")
    }
    print("Pontuação: \(pontuacao)")
}
print("Fim de jogo. Sua pontuação foi: \(pontuacao)")


