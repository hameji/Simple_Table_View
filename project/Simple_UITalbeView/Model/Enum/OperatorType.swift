//
//  OperatorType.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/09.
//

import Foundation

enum OperatorType: Int, CaseIterable {
    case creating = 0
    case transforming = 1
    case filtering = 2
    case combining = 3
    case errorHandling = 4
    case utility = 5
    case conditionalAndBoolean = 6
    case mathematicalAndAggregate = 7
    case backpressure = 8
    case connectable = 9
    case convert = 10
    
    var title: String {
        switch self {
        case .creating: return "Creatign Observables"
        case .transforming: return "Transforming Observables"
        case .filtering: return "Filtering Observables"
        case .combining: return "Combining Observables"
        case .errorHandling: return "Error Handling Operators"
        case .utility: return "Observable Utility Operators"
        case .conditionalAndBoolean: return "Conditional and Boolean Operators"
        case .mathematicalAndAggregate: return "Mathematical and Aggregate Operators"
        case .backpressure: return "Backpressure Operators"
        case .connectable: return "ConnectableObservable Operators"
        case .convert: return "Operators to Convert Observables"
        }
    }
}
