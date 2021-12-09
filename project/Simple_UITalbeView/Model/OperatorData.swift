//
//  OperatorData.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/07.
//

import Foundation

struct Operator {
    let name: String
    let type: OperatorType
    let stream1: String?
    let stream2: String?
    let result: String?
    let swiftCompatible: Bool
    let urlString: String
}

struct CreatingObserbles {
    static let array = [
        Operator(name: "Create", type: .creating,
                 stream1: "stream1_create", stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/create.html"),
        Operator(name: "Defer", type: .creating,
                 stream1: nil, stream2: nil, result: "result_defer.png",
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/defer.html"),
        Operator(name: "Empty", type: .creating,
                 stream1: nil, stream2: nil, result: "result_empty.png",
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/empty-never-throw.html"),
        Operator(name: "Never", type: .creating,
                 stream1: nil, stream2: nil, result: "result_never.png",
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/empty-never-throw.html"),
        Operator(name: "Throw", type: .creating,
                 stream1: nil, stream2: nil, result: "result_throw.png",
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/empty-never-throw.html"),
        Operator(name: "From", type: .creating,
                 stream1: "stream1_empty.png", stream2: nil, result: "result_from.png",
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/from.html"),
        Operator(name: "Interval", type: .creating,
                 stream1: nil, stream2: nil, result: "result_interval.png",
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/interval.html"),
        Operator(name: "Just", type: .creating,
                 stream1: "stream1_just.png", stream2: nil, result: "result_just.png",
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/just.html"),
        Operator(name: "Range", type: .creating,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/range.html"),
        Operator(name: "Repeat", type: .creating,
                 stream1: "stream1_repeat.png", stream2: nil, result: "result_repeat.png",
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/repeat.html"),
        Operator(name: "Start", type: .creating,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/start.html"),
        Operator(name: "Timer", type: .creating,
                 stream1: nil, stream2: nil, result: "result_timer.png",
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/timer.html"),
    ]
}

struct TransformingObservables {
    static let array = [
        Operator(name: "Buffer", type: .transforming,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/buffer.html"),
        Operator(name: "FaltMap", type: .transforming,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/flatmap.html"),
        Operator(name: "GroupBy", type: .transforming,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/groupby.html"),
        Operator(name: "Map", type: .transforming,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/map.html"),
        Operator(name: "Scan", type: .transforming,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/scan.html"),
        Operator(name: "Window", type: .transforming,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/window.html")
        ]
}

struct FilteringObservables {
    static let array = [
        Operator(name: "Debounce", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/debounce.html"),
        Operator(name: "Distinct", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/distinct.html"),
        Operator(name: "ElementAt", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/elementat.html"),
        Operator(name: "Filter", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/filter.html"),
        Operator(name: "First(Single)", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/first.html"),
        Operator(name: "IgnoreElements", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/ignoreelements.html"),
        Operator(name: "Last", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/last.html"),
        Operator(name: "Sample", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/sample.html"),
        Operator(name: "Skip", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/skip.html"),
        Operator(name: "SkipLast", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/skiplast.html"),
        Operator(name: "Take", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/take.html"),
        Operator(name: "TakeLast", type: .filtering,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/takelast.html"),
    ]
}

struct CombiningObservables {
    static let array = [
        Operator(name: "And", type: .combining,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/and-then-when.html"),
        Operator(name: "Then", type: .combining,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/and-then-when.html"),
        Operator(name: "When", type: .combining,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/and-then-when.html"),
        Operator(name: "CombineLatest", type: .combining,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/combinelatest.html"),
        Operator(name: "Join", type: .combining,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/join.html"),
        Operator(name: "Merge", type: .combining,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/merge.html"),
        Operator(name: "StartWith", type: .combining,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/startwith.html"),
        Operator(name: "Switch", type: .combining,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/switch.html"),
        Operator(name: "Zip", type: .combining,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/zip.html"),
    ]
}

struct ErrorHandlingOperators {
    static let array = [
        Operator(name: "Catch", type: .errorHandling,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/catch.html"),
        Operator(name: "Retry", type: .errorHandling,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/retry.html"),
    ]
}

struct UtitlityOperators {
    static let array = [
        Operator(name: "Delay", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/delay.html"),
        Operator(name: "Do", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/do.html"),
        Operator(name: "Materialize", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/materialize-dematerialize.html"),
        Operator(name: "Dematerialize", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/materialize-dematerialize.html"),
        Operator(name: "ObserveOn", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/observeon.html"),
        Operator(name: "Serialize", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/serialize.html"),
        Operator(name: "Subscribe", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/subscribe.html"),
        Operator(name: "SubscribeOn", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/subscribeon.html"),
        Operator(name: "TimeInterval", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/timeinterval.html"),
        Operator(name: "Timeout", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/timeout.html"),
        Operator(name: "Timestamp", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/timestamp.html"),
        Operator(name: "Using", type: .utility,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/using.html"),
    ]
}

struct ConditionalAndBooleanOperators {
    static let array = [
        Operator(name: "All", type: .conditionalAndBoolean,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/all.html"),
        Operator(name: "Amb", type: .conditionalAndBoolean,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/amb.html"),
        Operator(name: "Contains", type: .conditionalAndBoolean,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/contains.html"),
        Operator(name: "DefaultIfEmpty", type: .conditionalAndBoolean,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/defaultifempty.html"),
        Operator(name: "SequenceEqual", type: .conditionalAndBoolean,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/sequenceequal.html"),
        Operator(name: "SkipUntil", type: .conditionalAndBoolean,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/skipuntil.html"),
        Operator(name: "SkipWhile", type: .conditionalAndBoolean,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/skipwhile.html"),
        Operator(name: "TakeUntil", type: .conditionalAndBoolean,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/takeuntil.html"),
        Operator(name: "TakeWhile", type: .conditionalAndBoolean,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/takewhile.html"),
    ]
}

struct MathematicalAndAggregateOperators {
    static let array = [
        // Mathematical and Aggregate Operators
        Operator(name: "Average", type: .mathematicalAndAggregate,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/average.html"),
        Operator(name: "Concat", type: .mathematicalAndAggregate,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/concat.html"),
        Operator(name: "Count", type: .mathematicalAndAggregate,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/count.html"),
        Operator(name: "Max", type: .mathematicalAndAggregate,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/max.html"),
        Operator(name: "Min", type: .mathematicalAndAggregate,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/min.html"),
        Operator(name: "Reduce", type: .mathematicalAndAggregate,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/reduce.html"),
        Operator(name: "Sum", type: .mathematicalAndAggregate,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/sum.html"),
    ]
}

struct ConnectableOperators {
    static let array = [
        Operator(name: "Connect", type: .connectable,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: false, urlString: "http://reactivex.io/documentation/operators/connect.html"),
        Operator(name: "Publish", type: .connectable,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/publish.html"),
        Operator(name: "RefCount", type: .connectable,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/refcount.html"),
        Operator(name: "Replay", type: .connectable,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/replay.html"),
    ]
}

struct ConvertObservables {
    static let array = [
        Operator(name: "To", type: .convert,
                 stream1: nil, stream2: nil, result: nil,
                 swiftCompatible: true, urlString: "http://reactivex.io/documentation/operators/to.html"),
    ]
}


struct Operators {
    static let array =
        CreatingObserbles.array
        + TransformingObservables.array
        + FilteringObservables.array
        + CombiningObservables.array
        + ErrorHandlingOperators.array
        + UtitlityOperators.array
        + ConditionalAndBooleanOperators.array
        + MathematicalAndAggregateOperators.array
        + ConnectableOperators.array
        + ConvertObservables.array
}
