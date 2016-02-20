/*
 This source file is part of the Swift.org open source project

 Copyright 2015 - 2016 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

public enum Configuration {
    case Debug, Release

    var dirname: String {
        switch self {
            case .Debug: return "debug"
            case .Release: return "release"
        }
    }

    var define: String {
        switch self {
            case .Debug: return "-DDEBUG"
            case .Release: return "-DNDEBUG"
        }
    }
}

extension Configuration: CustomStringConvertible {
    public var description: String {
        return dirname
    }
}
