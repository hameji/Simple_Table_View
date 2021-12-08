//
//  OperatorData.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/07.
//

import Foundation

enum OperatorType {
    case creating
    case transforming
    case filtering
    case combining
    case errorHandling
    case utility
    case conditionalAndBoolean
    case mathematicalAndAggregate
    case backpressure
    case connectable
    case convert
}

struct Operator {
    let name: String
    let type: OperatorType
    let urlString: String
}

struct OperatorData {
    static let array = [
        // Creating Observables
        Operator(name: "Create", type: .creating, urlString: "http://reactivex.io/documentation/operators/create.html"),
        Operator(name: "Defer", type: .creating, urlString: "http://reactivex.io/documentation/operators/defer.html"),
        Operator(name: "Empty", type: .creating, urlString: "http://reactivex.io/documentation/operators/empty-never-throw.html"),
        Operator(name: "Never", type: .creating, urlString: "http://reactivex.io/documentation/operators/empty-never-throw.html"),
        Operator(name: "Throw", type: .creating, urlString: "http://reactivex.io/documentation/operators/empty-never-throw.html"),
        Operator(name: "From", type: .creating, urlString: "http://reactivex.io/documentation/operators/from.html"),
        Operator(name: "Interval", type: .creating, urlString: "http://reactivex.io/documentation/operators/interval.html"),
        Operator(name: "Just", type: .creating, urlString: "http://reactivex.io/documentation/operators/just.html"),
        Operator(name: "Range", type: .creating, urlString: "http://reactivex.io/documentation/operators/range.html"),
        Operator(name: "Repeat", type: .creating, urlString: "http://reactivex.io/documentation/operators/repeat.html"),
        Operator(name: "Start", type: .creating, urlString: "http://reactivex.io/documentation/operators/start.html"),
        Operator(name: "Timer", type: .creating, urlString: "http://reactivex.io/documentation/operators/timer.html"),
        // Transforming Observables
        Operator(name: "Buffer", type: .transforming, urlString: "http://reactivex.io/documentation/operators/buffer.html"),
        Operator(name: "FaltMap", type: .transforming, urlString: "http://reactivex.io/documentation/operators/flatmap.html"),
        Operator(name: "GroupBy", type: .transforming, urlString: "http://reactivex.io/documentation/operators/groupby.html"),
        Operator(name: "Map", type: .transforming, urlString: "http://reactivex.io/documentation/operators/map.html"),
        Operator(name: "Scan", type: .transforming, urlString: "http://reactivex.io/documentation/operators/scan.html"),
        Operator(name: "Window", type: .transforming, urlString: "http://reactivex.io/documentation/operators/window.html"),
        // Filtering Observables
        Operator(name: "Debounce", type: .filtering, urlString: "http://reactivex.io/documentation/operators/debounce.html"),
        Operator(name: "Distinct", type: .filtering, urlString: "http://reactivex.io/documentation/operators/distinct.html"),
        Operator(name: "ElementAt", type: .filtering, urlString: "http://reactivex.io/documentation/operators/elementat.html"),
        Operator(name: "Filter", type: .filtering, urlString: "http://reactivex.io/documentation/operators/filter.html"),
        Operator(name: "First", type: .filtering, urlString: "http://reactivex.io/documentation/operators/first.html"),
        Operator(name: "IgnoreElements", type: .filtering, urlString: "http://reactivex.io/documentation/operators/ignoreelements.html"),
        Operator(name: "Last", type: .filtering, urlString: "http://reactivex.io/documentation/operators/last.html"),
        Operator(name: "Sample", type: .filtering, urlString: "http://reactivex.io/documentation/operators/sample.html"),
        Operator(name: "Skip", type: .filtering, urlString: "http://reactivex.io/documentation/operators/skip.html"),
        Operator(name: "SkipLast", type: .filtering, urlString: "http://reactivex.io/documentation/operators/skiplast.html"),
        Operator(name: "Take", type: .filtering, urlString: "http://reactivex.io/documentation/operators/take.html"),
        Operator(name: "TakeLast", type: .filtering, urlString: "http://reactivex.io/documentation/operators/takelast.html"),
        // Combining Observables
        Operator(name: "And", type: .combining, urlString: "http://reactivex.io/documentation/operators/and-then-when.html"),
        Operator(name: "Then", type: .combining, urlString: "http://reactivex.io/documentation/operators/and-then-when.html"),
        Operator(name: "When", type: .combining, urlString: "http://reactivex.io/documentation/operators/and-then-when.html"),
        Operator(name: "CombineLatest", type: .combining, urlString: "http://reactivex.io/documentation/operators/combinelatest.html"),
        Operator(name: "Join", type: .combining, urlString: "http://reactivex.io/documentation/operators/join.html"),
        Operator(name: "Merge", type: .combining, urlString: "http://reactivex.io/documentation/operators/merge.html"),
        Operator(name: "StartWith", type: .combining, urlString: "http://reactivex.io/documentation/operators/startwith.html"),
        Operator(name: "Switch", type: .combining, urlString: "http://reactivex.io/documentation/operators/switch.html"),
        Operator(name: "Zip", type: .combining, urlString: "http://reactivex.io/documentation/operators/zip.html"),
        // Error Handling Operators
        Operator(name: "Catch", type: .errorHandling, urlString: "http://reactivex.io/documentation/operators/catch.html"),
        Operator(name: "Retry", type: .errorHandling, urlString: "http://reactivex.io/documentation/operators/retry.html"),
        // Observable Utitlity Operators
        Operator(name: "Delay", type: .utility, urlString: "http://reactivex.io/documentation/operators/delay.html"),
        Operator(name: "Do", type: .utility, urlString: "http://reactivex.io/documentation/operators/do.html"),
        Operator(name: "Materialize", type: .utility, urlString: "http://reactivex.io/documentation/operators/materialize-dematerialize.html"),
        Operator(name: "Dematerialize", type: .utility, urlString: "http://reactivex.io/documentation/operators/materialize-dematerialize.html"),
        Operator(name: "ObserveOn", type: .utility, urlString: "http://reactivex.io/documentation/operators/observeon.html"),
        Operator(name: "Serialize", type: .utility, urlString: "http://reactivex.io/documentation/operators/serialize.html"),
        Operator(name: "Subscribe", type: .utility, urlString: "http://reactivex.io/documentation/operators/subscribe.html"),
        Operator(name: "SubscribeOn", type: .utility, urlString: "http://reactivex.io/documentation/operators/subscribeon.html"),
        Operator(name: "TimeInterval", type: .utility, urlString: "http://reactivex.io/documentation/operators/timeinterval.html"),
        Operator(name: "Timeout", type: .utility, urlString: "http://reactivex.io/documentation/operators/timeout.html"),
        Operator(name: "Timestamp", type: .utility, urlString: "http://reactivex.io/documentation/operators/timestamp.html"),
        Operator(name: "Using", type: .utility, urlString: "http://reactivex.io/documentation/operators/using.html"),
        // Conditional and Boolean Operators
        Operator(name: "All", type: .conditionalAndBoolean, urlString: "http://reactivex.io/documentation/operators/all.html"),
        Operator(name: "Amb", type: .conditionalAndBoolean, urlString: "http://reactivex.io/documentation/operators/amb.html"),
        Operator(name: "Contains", type: .conditionalAndBoolean, urlString: "http://reactivex.io/documentation/operators/contains.html"),
        Operator(name: "DefaultIfEmpty", type: .conditionalAndBoolean, urlString: "http://reactivex.io/documentation/operators/defaultifempty.html"),
        Operator(name: "SequenceEqual", type: .conditionalAndBoolean, urlString: "http://reactivex.io/documentation/operators/sequenceequal.html"),
        Operator(name: "SkipUntil", type: .conditionalAndBoolean, urlString: "http://reactivex.io/documentation/operators/skipuntil.html"),
        Operator(name: "SkipWhile", type: .conditionalAndBoolean, urlString: "http://reactivex.io/documentation/operators/skipwhile.html"),
        Operator(name: "TakeUntil", type: .conditionalAndBoolean, urlString: "http://reactivex.io/documentation/operators/takeuntil.html"),
        Operator(name: "TakeWhile", type: .conditionalAndBoolean, urlString: "http://reactivex.io/documentation/operators/takewhile.html"),
        // Mathematical and Aggregate Operators
        Operator(name: "Average", type: .mathematicalAndAggregate, urlString: "http://reactivex.io/documentation/operators/average.html"),
        Operator(name: "Concat", type: .mathematicalAndAggregate, urlString: "http://reactivex.io/documentation/operators/concat.html"),
        Operator(name: "Count", type: .mathematicalAndAggregate, urlString: "http://reactivex.io/documentation/operators/count.html"),
        Operator(name: "Max", type: .mathematicalAndAggregate, urlString: "http://reactivex.io/documentation/operators/max.html"),
        Operator(name: "Min", type: .mathematicalAndAggregate, urlString: "http://reactivex.io/documentation/operators/min.html"),
        Operator(name: "Reduce", type: .mathematicalAndAggregate, urlString: "http://reactivex.io/documentation/operators/reduce.html"),
        Operator(name: "Sum", type: .mathematicalAndAggregate, urlString: "http://reactivex.io/documentation/operators/sum.html"),
        // Connectable Observable Operators
        Operator(name: "Connect", type: .connectable, urlString: "http://reactivex.io/documentation/operators/connect.html"),
        Operator(name: "Publish", type: .connectable, urlString: "http://reactivex.io/documentation/operators/publish.html"),
        Operator(name: "RefCount", type: .connectable, urlString: "http://reactivex.io/documentation/operators/refcount.html"),
        Operator(name: "Replay", type: .connectable, urlString: "http://reactivex.io/documentation/operators/replay.html"),
        // Operators to Convert Observables
        Operator(name: "To", type: .convert, urlString: "http://reactivex.io/documentation/operators/to.html"),
    ]
}
