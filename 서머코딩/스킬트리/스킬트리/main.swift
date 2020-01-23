//
//  main.swift
//  스킬트리
//
//  Created by CHOMINJI on 2020/01/23.
//  Copyright © 2020 cmindy. All rights reserved.
//

import Foundation

func makeTable(of skill: [String]) -> [String] {
    var skillTable: [String] = [""]
    for i in 0..<skill.count {
        let a = skill[0...i].joined()
        skillTable.append(a)
    }
    return skillTable
}

func solution(_ skill: String, _ skill_trees: [String]) -> Int {
    let skill = skill.map { String($0) }
    let skillTrees = skill_trees.map { $0.map { String($0) } }
    let allowSkillList = makeTable(of: skill)

    var filteredSkillTree = skillTrees.map { tree -> String in
        let temp = tree.filter { skill.contains($0) }.joined()
        return temp.isEmpty ? "" : temp
    }
    filteredSkillTree.removeAll(where: { !allowSkillList.contains($0) })
    return filteredSkillTree.count
}


func solution2(_ skill:String, _ skill_trees:[String]) -> Int {

    func available(_ s: String, _ t: String) -> Bool {
        let alza = t.filter { s.contains($0) }
        return s.starts(with: alza)
    }

    return skill_trees.map { available(skill, $0) }.filter { $0 }.count
}


solution("CBD", ["BACDE", "CBADF", "AECB", "BDA", "AZ"]) // 2



