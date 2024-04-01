//
//  709. To Lower Case .swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 01.04.2024.
//

/*
 Дана строка s, верните строку после замены каждой прописной буквы на такую же строчную.

 Пример 1:
 Вход: s = "Hello"
 Выход: "hello"
 
 Пример 2:
 Вход: s = "here"
 Выходные данные: "здесь"
 
 Пример 3:
 Ввод: s = "LOVELY"
 Выходные данные: "lovely"
 */

class LowerCaseClass {
    func toLowerCase(_ s: String) -> String {
        // Возвращем строку, написанную нижним регистром
        return s.lowercased()
    }
}
