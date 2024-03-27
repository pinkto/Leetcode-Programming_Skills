//
//  1768. Merge Strings Alternately.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

/*
 Даны две строки word1 и word2. Объедините строки, добавляя буквы в чередующемся порядке, начиная с word1.
 Если одна из строк длиннее другой, добавьте дополнительные буквы в конец объединенной строки.
 Верните объединенную строку.

 Пример 1:

 Вход: word1 = "abc", word2 = "pqr"
 Выходные данные: "apbqcr".
 Пояснения: Объединенная строка будет объединена следующим образом:
 слово1: a b c
 слово2: p q r
 объединено: a p b q c r
 

 Пример 2:

 Вход: word1 = "ab", word2 = "pqrs"
 Выход: "apbqrs"
 Пояснения: Обратите внимание, что поскольку слово2 длиннее, в конце добавляется "rs".
 слово1: a b
 слово2: p q r s
 объединено: a p b q r s
 
 
 Пример 3:

 Вход: word1 = "abcd", word2 = "pq"
 Выходные данные: "apbqcd"
 Пояснения: Обратите внимание, что поскольку слово1 длиннее, в конце добавляется "cd".
 слово1: a b c d
 слово2: p q
 объединено: a p b q c d

 */

class MergeStringsAlternately {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {

        // Создадим две переменных-счётчика для отслеживания индексов символов в словах word1 и word1
        var i = 0 , j = 0

        // Создадим массив для храннения объединенных символов
        var resultArray: Array<Character> = []

        // Преобразуем строки word1 и word2 в массивы символов array1 и array2 соответсвенно
        let array1 = Array(word1)
        let array2 = Array(word2)

        // Пока i меньше длины word1, а j меньше длины word2
        while i < word1.count && j < word2.count {
            // Поочередно добавляем символы из word1 и word2 в resultArray,
            resultArray.append(array1[i])
            resultArray.append(array2[j])

            // увеличивая i и j после каждой операции добавления
            i += 1
            j += 1
        }

        // Проверям, есть ли оставшиеся символы в word1 (i меньше длины word1?).
        // Если да, то добавляем оставшиеся символы word1 в resultArray
        while i < word1.count {
            resultArray.append(array1[i])
            i += 1
        }
        // Проверяем, есть ли оставшиеся символы в word2 (j меньше длины word2?). 
        // Если да, то добавляем оставшиеся символы word2 в resultArray
        while j < word2.count {
            resultArray.append(array2[j])
            j += 1
        }

        // Преобразуем resultArray обратно в строку с помощью String(resultArray)
        // и возвращаем объединенную строку
        return String(resultArray)
    }
}
