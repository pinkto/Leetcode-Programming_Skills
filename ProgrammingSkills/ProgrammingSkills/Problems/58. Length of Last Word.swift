//
//  58. Length of Last Word.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 01.04.2024.
//

/*
 Дана строка s, состоящая из слов и пробелов, верните длину последнего слова в строке.
 Слово - это максимальная подстрока состоящая только из непробельных символов.

 Пример 1:
 Вход: s = "Hello World"
 Выход: 5
 Пояснения: Последнее слово - "World" длиной 5.
 
 Пример 2:
 Вход: s = " fly me to the moon "
 Выход: 4
 Пояснения: Последнее слово - "луна" длиной 4.
 
 Пример 3:
 Вход: s = "Луффи все еще джойбой".
 Выход: 6
 Пояснения: Последнее слово - "joyboy" длиной 6.
 */

class LastWordLengthClass {
    func lengthOfLastWord(_ s: String) -> Int {

        // 1. Удаляем с обоих концов пробелы
        let trimmedString = s.trimmingCharacters(in: .whitespaces)

        // 2. Получившуюся строку разделяем на массив слов (ориентируемся на пробел для отделения одного слова от другого)
        let wordsArray = trimmedString.components(separatedBy: " ")
        
        // 3. Берем последний элемент массива (то есть последнее слово)
        if let lastWord = wordsArray.last {
            //4. Считаем длину последнего слова
            return lastWord.count
        }
        return 0
    }
}
