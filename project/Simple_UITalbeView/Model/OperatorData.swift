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
                 swiftCompatible: true, urlString: "create.html"),
        Operator(name: "Defer", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "defer.html"),
        Operator(name: "Empty", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "empty-never-throw.html"),
        Operator(name: "Never", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "empty-never-throw.html"),
        Operator(name: "Throw", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "empty-never-throw.html"),
        Operator(name: "From", type: .creating,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "from.html"),
        Operator(name: "Interval", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "interval.html"),
        Operator(name: "Just", type: .creating,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "just.html"),
        Operator(name: "Range", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "range.html"),
        Operator(name: "Repeat", type: .creating,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "repeat.html"),
        Operator(name: "Start", type: .creating,
                 images: nil,
                 swiftCompatible: false, urlString: "start.html"),
        Operator(name: "Timer", type: .creating,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "timer.html"),
    ]
}

struct TransformingObservables {
    static let array = [
        Operator(name: "Buffer", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "buffer.html"),
        Operator(name: "FlatMap", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "flatmap.html"),
        Operator(name: "GroupBy", type: .transforming,
                 images: nil,
                 swiftCompatible: false, urlString: "groupby.html"),
        Operator(name: "Map", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "map.html"),
        Operator(name: "Scan", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "scan.html"),
        Operator(name: "Window", type: .transforming,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "window.html")
        ]
}

struct FilteringObservables {
    static let array = [
        Operator(name: "Debounce", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "debounce.html"),
        Operator(name: "Distinct", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "distinct.html"),
        Operator(name: "ElementAt", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "elementat.html"),
        Operator(name: "Filter", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "filter.html"),
        Operator(name: "First(Single)", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "first.html"),
        Operator(name: "IgnoreElements", type: .filtering,
                 images: nil,
                 swiftCompatible: false, urlString: "ignoreelements.html"),
        Operator(name: "Last", type: .filtering,
                 images: nil,
                 swiftCompatible: false, urlString: "last.html"),
        Operator(name: "Sample", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: true, opreator: true, result: true),
                 swiftCompatible: true, urlString: "sample.html"),
        Operator(name: "Skip", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "skip.html"),
        Operator(name: "SkipLast", type: .filtering,
                 images: nil,
                 swiftCompatible: false, urlString: "skiplast.html"),
        Operator(name: "Take", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "take.html"),
        Operator(name: "TakeLast", type: .filtering,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "takelast.html"),
    ]
}

struct CombiningObservables {
    static let array = [
        Operator(name: "And", type: .combining,
                 images: nil,
                 swiftCompatible: false, urlString: "and-then-when.html"),
        Operator(name: "Then", type: .combining,
                 images: nil,
                 swiftCompatible: false, urlString: "and-then-when.html"),
        Operator(name: "When", type: .combining,
                 images: nil,
                 swiftCompatible: false, urlString: "and-then-when.html"),
        Operator(name: "CombineLatest", type: .combining,
                 images: DiagramImages(stream1: true, stream2: true, opreator: true, result: true),
                 swiftCompatible: true, urlString: "combinelatest.html"),
        Operator(name: "Join", type: .combining,
                 images: DiagramImages(stream1: false, stream2: false, opreator: false, result: false),
                 swiftCompatible: false, urlString: "join.html"),
        Operator(name: "Merge", type: .combining,
                 images: DiagramImages(stream1: true, stream2: true, opreator: true, result: true),
                 swiftCompatible: true, urlString: "merge.html"),
        Operator(name: "StartWith", type: .combining,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "startwith.html"),
        Operator(name: "Switch", type: .combining,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "switch.html"),
        Operator(name: "Zip", type: .combining,
                 images: DiagramImages(stream1: true, stream2: true, opreator: false, result: true),
                 swiftCompatible: true, urlString: "zip.html"),
    ]
}

struct ErrorHandlingOperators {
    static let array = [
        Operator(name: "Catch", type: .errorHandling,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "catch.html"),
        Operator(name: "Retry", type: .errorHandling,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "retry.html"),
    ]
}

struct UtitlityOperators {
    static let array = [
        Operator(name: "Delay", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "delay.html"),
        Operator(name: "Do", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "do.html"),
        Operator(name: "Materialize", type: .utility,
                 images: nil,
                 swiftCompatible: false, urlString: "materialize-dematerialize.html"),
        Operator(name: "Dematerialize", type: .utility,
                 images: nil,
                 swiftCompatible: false, urlString: "materialize-dematerialize.html"),
        Operator(name: "ObserveOn", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "observeon.html"),
        Operator(name: "Serialize", type: .utility,
                 images: nil,
                 swiftCompatible: false, urlString: "serialize.html"),
        Operator(name: "Subscribe", type: .utility,
                 images: DiagramImages(stream1: false, stream2: false, opreator: false, result: false),
                 swiftCompatible: true, urlString: "subscribe.html"),
        Operator(name: "SubscribeOn", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "subscribeon.html"),
        Operator(name: "TimeInterval", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "timeinterval.html"),
        Operator(name: "Timeout", type: .utility,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "timeout.html"),
        Operator(name: "Timestamp", type: .utility,
                 images: nil,
                 swiftCompatible: false, urlString: "timestamp.html"),
        Operator(name: "Using", type: .utility,
                 images: DiagramImages(stream1: false, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "using.html"),
    ]
}

struct ConditionalAndBooleanOperators {
    static let array = [
        Operator(name: "All", type: .conditionalAndBoolean,
                 images: nil,
                 swiftCompatible: false, urlString: "all.html"),
        Operator(name: "Amb", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "amb.html"),
        Operator(name: "Contains", type: .conditionalAndBoolean,
                 images: nil,
                 swiftCompatible: false, urlString: "contains.html"),
        Operator(name: "DefaultIfEmpty", type: .conditionalAndBoolean,
                 images: nil,
                 swiftCompatible: false, urlString: "defaultifempty.html"),
        Operator(name: "SequenceEqual", type: .conditionalAndBoolean,
                 images: nil,
                 swiftCompatible: false, urlString: "sequenceequal.html"),
        Operator(name: "SkipUntil", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: true, opreator: true, result: true),
                 swiftCompatible: true, urlString: "skipuntil.html"),
        Operator(name: "SkipWhile", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "skipwhile.html"),
        Operator(name: "TakeUntil", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: true, opreator: true, result: true),
                 swiftCompatible: true, urlString: "takeuntil.html"),
        Operator(name: "TakeWhile", type: .conditionalAndBoolean,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "takewhile.html"),
    ]
}

struct MathematicalAndAggregateOperators {
    static let array = [
        Operator(name: "Average", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false, urlString: "average.html"),
        Operator(name: "Concat", type: .mathematicalAndAggregate,
                 images: DiagramImages(stream1: true, stream2: true, opreator: true, result: true),
                 swiftCompatible: true, urlString: "concat.html"),
        Operator(name: "Count", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false, urlString: "count.html"),
        Operator(name: "Max", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false, urlString: "max.html"),
        Operator(name: "Min", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false, urlString: "min.html"),
        Operator(name: "Reduce", type: .mathematicalAndAggregate,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "reduce.html"),
        Operator(name: "Sum", type: .mathematicalAndAggregate,
                 images: nil,
                 swiftCompatible: false, urlString: "sum.html"),
    ]
}

struct ConnectableOperators {
    static let array = [
        Operator(name: "Connect", type: .connectable,
                 images: nil,
                 swiftCompatible: false, urlString: "connect.html"),
        Operator(name: "Publish", type: .connectable,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "publish.html"),
        Operator(name: "RefCount", type: .connectable,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "refcount.html"),
        Operator(name: "Replay", type: .connectable,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "replay.html"),
    ]
}

struct ConvertObservables {
    static let array = [
        Operator(name: "To", type: .convert,
                 images: DiagramImages(stream1: true, stream2: false, opreator: true, result: true),
                 swiftCompatible: true, urlString: "to.html"),
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
