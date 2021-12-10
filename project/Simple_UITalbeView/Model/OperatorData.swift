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
    let images: DiagramImages?
    let swiftCompatible: Bool
    let functions: [String]?
    let urlString: String
}

struct AppResources {
    static let operatorsRef = "http://reactivex.io/documentation/operators/"
}

struct DiagramImages {
    let stream1: Bool
    let stream2: Bool
    let opreator: Bool
    let result: Bool
}

struct CreatingObservables {
    static let array = [
        Operator(name: "Create", type: .creating,
                 images: DiagramImages(stream1: true, stream2: false, opreator: false, result: false),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "create.html"),
        Operator(name: "Defer", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "defer.html"),
        Operator(name: "Empty", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "empty-never-throw.html"),
        Operator(name: "Never", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "empty-never-throw.html"),
        Operator(name: "Throw", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "empty-never-throw.html"),
        Operator(name: "From", type: .creating,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "from.html"),
        Operator(name: "Interval", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "interval.html"),
        Operator(name: "Just", type: .creating,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "just.html"),
        Operator(name: "Range", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "range.html"),
        Operator(name: "Repeat", type: .creating,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "repeat.html"),
        Operator(name: "Start", type: .creating,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "start.html"),
        Operator(name: "Timer", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "timer.html"),
    ]
}

struct TransformingObservables {
    static let array = [
        Operator(name: "Buffer", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "buffer.html"),
        Operator(name: "FlatMap", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: ["flatmap", "flatmapFirst", "flatmapLatest"],
                 urlString: "flatmap.html"),
        Operator(name: "GroupBy", type: .transforming,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "groupby.html"),
        Operator(name: "Map", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "map.html"),
        Operator(name: "Scan", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "scan.html"),
        Operator(name: "Window", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "window.html")
        ]
}

struct FilteringObservables {
    static let array = [
        Operator(name: "Debounce", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "debounce.html"),
        Operator(name: "Distinct", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: ["distinctUtilChanged"],
                 urlString: "distinct.html"),
        Operator(name: "ElementAt", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "elementat.html"),
        Operator(name: "Filter", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "filter.html"),
        Operator(name: "First(Single)", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "first.html"),
        Operator(name: "IgnoreElements", type: .filtering,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "ignoreelements.html"),
        Operator(name: "Last", type: .filtering,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "last.html"),
        Operator(name: "Sample", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: true, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "sample.html"),
        Operator(name: "Skip", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "skip.html"),
        Operator(name: "SkipLast", type: .filtering,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "skiplast.html"),
        Operator(name: "Take", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "take.html"),
        Operator(name: "TakeLast", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "takelast.html"),
    ]
}

struct CombiningObservables {
    static let array = [
        Operator(name: "And", type: .combining,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "and-then-when.html"),
        Operator(name: "Then", type: .combining,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "and-then-when.html"),
        Operator(name: "When", type: .combining,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "and-then-when.html"),
        Operator(name: "CombineLatest", type: .combining,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "combinelatest.html"),
        Operator(name: "Join", type: .combining,
                 images: DiagramImages(stream1: false, stream2: false, opreator: false, result: false),
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "join.html"),
        Operator(name: "Merge", type: .combining,
                 images: DiagramImages(stream1: true, stream2: true, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "merge.html"),
        Operator(name: "StartWith", type: .combining,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "startwith.html"),
        Operator(name: "Switch", type: .combining,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "switch.html"),
        Operator(name: "Zip", type: .combining,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "zip.html"),
    ]
}

struct ErrorHandlingOperators {
    static let array = [
        Operator(name: "Catch", type: .errorHandling,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "catch.html"),
        Operator(name: "Retry", type: .errorHandling,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "retry.html"),
    ]
}

struct UtitlityOperators {
    static let array = [
        Operator(name: "Delay", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "delay.html"),
        Operator(name: "Do", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "do.html"),
        Operator(name: "Materialize", type: .utility,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "materialize-dematerialize.html"),
        Operator(name: "Dematerialize", type: .utility,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "materialize-dematerialize.html"),
        Operator(name: "ObserveOn", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "observeon.html"),
        Operator(name: "Serialize", type: .utility,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "serialize.html"),
        Operator(name: "Subscribe", type: .utility,
                 images: nil,
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "subscribe.html"),
        Operator(name: "SubscribeOn", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "subscribeon.html"),
        Operator(name: "TimeInterval", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "timeinterval.html"),
        Operator(name: "Timeout", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "timeout.html"),
        Operator(name: "Timestamp", type: .utility,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "timestamp.html"),
        Operator(name: "Using", type: .utility,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "using.html"),
    ]
}

struct ConditionalAndBooleanOperators {
    static let array = [
        Operator(name: "All", type: .conditionalAndBoolean,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "all.html"),
        Operator(name: "Amb", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "amb.html"),
        Operator(name: "Contains", type: .conditionalAndBoolean,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "contains.html"),
        Operator(name: "DefaultIfEmpty", type: .conditionalAndBoolean,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "defaultifempty.html"),
        Operator(name: "SequenceEqual", type: .conditionalAndBoolean,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "sequenceequal.html"),
        Operator(name: "SkipUntil", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "skipuntil.html"),
        Operator(name: "SkipWhile", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "skipwhile.html"),
        Operator(name: "TakeUntil", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "takeuntil.html"),
        Operator(name: "TakeWhile", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "takewhile.html"),
    ]
}

struct MathematicalAndAggregateOperators {
    static let array = [
        Operator(name: "Average", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "average.html"),
        Operator(name: "Concat", type: .mathematicalAndAggregate,
                 images: DiagramImages(stream1: true, stream2: true, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "concat.html"),
        Operator(name: "Count", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "count.html"),
        Operator(name: "Max", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "max.html"),
        Operator(name: "Min", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "min.html"),
        Operator(name: "Reduce", type: .mathematicalAndAggregate,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "reduce.html"),
        Operator(name: "Sum", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "sum.html"),
    ]
}

struct ConnectableOperators {
    static let array = [
        Operator(name: "Connect", type: .connectable,
                 images: nil,
                 swiftCompatible: false,
                 functions: nil,
                 urlString: "connect.html"),
        Operator(name: "Publish", type: .connectable,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "publish.html"),
        Operator(name: "RefCount", type: .connectable,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "refcount.html"),
        Operator(name: "Replay", type: .connectable,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "replay.html"),
    ]
}

struct ConvertObservables {
    static let array = [
        Operator(name: "To", type: .convert,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true,
                 functions: nil,
                 urlString: "to.html"),
    ]
}


struct Operators {
    static let array =
        CreatingObservables.array
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
