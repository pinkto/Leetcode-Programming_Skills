//
//  28. Find the Index of the First Occurrence in a String.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

/* Даны две строки needle и haystack, верните индекс первого вхождения needle в haystack или -1, если needle не является частью haystack.

Пример 1:
Вход: haystack = "sadbutsad", needle = "sad"
Выходные данные: 0

Пояснения: Слово "sad" встречается в индексах 0 и 6.
Первое вхождение находится в индексе 0, поэтому мы возвращаем 0.


Пример 2:
Вход: haystack = "leetcode", needle = "leeto"
Выходные данные: -1

Пояснение: "leeto" не встречается в "leetcode", поэтому мы возвращаем -1.
 */

class FindTheIndexClass {
    func strStr(_ haystack: String, _ needle: String) -> Int {

        // Проверяем, что строка не пустая
        guard !Array(haystack).isEmpty else { return -1}

        // Заводим две переменные, в которых будут храниться массивы символов строк haystack и needle
        let array1 = Array(haystack)
        let array2 = Array(needle)

        // Проверям длина haystack больше или равна needle. Эта проверка необходима для того, чтобы убедиться, что в haystack достаточно символов для нахождения needle
        if array1.count >= array2.count {

            for i in 0...(array1.count - array2.count) {
                for j in 0...array2.count {

                    // Проверяем равен ли символ с текущим индексом i + j в haystack символу с индексом j в needle
                    if array1[i + j] != array2[j] {

                        // Если они не равны, выходим из внутреннего цикла, поскольку это указывает на то, что подстрока, начинающаяся с индекса i в haystack, не совпадает с needle
                        break

                    // Если символы одинаковы для всех индексов needle, значит, needle найден в haystack, начиная с индекса i, поэтому возвращается i
                    } else if j == array2.count - 1 {
                        return i
                    }
                }
            }
        }

       // Если вложенный цикл завершается, не найдя совпадения, то возвращается -1, так как needle не найден в haystack
        return -1
    }
}
