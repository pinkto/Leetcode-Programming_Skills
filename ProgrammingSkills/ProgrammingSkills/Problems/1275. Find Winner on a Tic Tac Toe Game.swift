//
//  1275. Find Winner on a Tic Tac Toe Game.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 10.06.2024.
//

import Foundation

/*
 В Крестики-нолики играют два игрока A и B на поле 3 x 3. Правила игры «Крестики-нолики» таковы:

 Игроки по очереди помещают символы в пустые квадраты ' '.
 Первый игрок A всегда ставит символы «X», а второй игрок B - символы «O».
 Символы «X» и «O» всегда ставятся на пустые клетки, а не на заполненные.
 Игра заканчивается, когда три одинаковых (непустых) символа заполняют любую строку, столбец или диагональ.
 Игра также заканчивается, если все клетки непустые.
 Больше ходов не может быть сделано, если игра закончена.
 Если задан двумерный целочисленный массив moves, где moves[i] = [rowi, coli] означает, что i-й ход будет сыгран на сетке[rowi][coli]. вернет победителя игры, если он существует (A или B). В случае, если игра заканчивается вничью, возвращается «Ничья». Если еще есть ходы, которые нужно сыграть, верните «Pending».

 Можно предположить, что ходы валидны (то есть соответствуют правилам игры в Крестики-нолики), сетка изначально пуста, и A будет играть первым.
 */

class TicTacGameClass {
    func tictactoe(_ moves: [[Int]]) -> String {
        // Инициализация 3x3 поля
        var board = Array(repeating: Array(repeating: "", count: 3), count: 3)

        // Функция для проверки победы
        func isWinner(_ player: String) -> Bool {
            // Проверка строк и столбцов
            for i in 0..<3 {
                if (board[i][0] == player && board[i][1] == player && board[i][2] == player) ||
                    (board[0][i] == player && board[1][i] == player && board[2][i] == player) {
                    return true
                }
            }

            // Проверка диагоналей
            if (board[0][0] == player && board[1][1] == player && board[2][2] == player) ||
                (board[0][2] == player && board[1][1] == player && board[2][0] == player) {
                return true
            }

            return false
        }
        
        // Заполнение поля ходами и проверка победителя
        for i in 0..<moves.count {
            let move = moves[i]
            let player = i % 2 == 0 ? "X" : "O"
            board[move[0]][move[1]] = player

            // Проверка победителя
            if isWinner(player) {
                return player == "X" ? "A" : "B"
            }
        }

        // Проверка исхода игры
        return moves.count == 9 ? "Draw" : "Pending"
    }
}
