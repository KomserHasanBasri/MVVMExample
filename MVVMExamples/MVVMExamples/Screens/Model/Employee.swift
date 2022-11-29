//
//  Employee.swift
//  MVVMExamples
//
//  Created by Hasan Basri Komser on 29.11.2022.
//

import Foundation

typealias Employees = [Employee]

// MARK: - Employee
struct Employee: Codable {
    let id: String
    let employeeName: String
    let employeeSalary: String
    let employeeAge: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
    }
}

