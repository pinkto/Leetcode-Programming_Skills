//
//  1232. Check If It Is a Straight Line.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

class CheckStraightLineClass {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        // Первая и вторая точки для расчета начального наклона
        let (x0, y0) = (coordinates[0][0], coordinates[0][1])
        let (x1, y1) = (coordinates[1][0], coordinates[1][1])

        // Проверка каждого набора из трех точек на коллинеарность
        for i in 2..<coordinates.count {
            let (x, y) = (coordinates[i][0], coordinates[i][1])
            if (y1 - y0) * (x - x1) != (y - y1) * (x1 - x0) {
                return false
            }
        }

        return true
    }
}
