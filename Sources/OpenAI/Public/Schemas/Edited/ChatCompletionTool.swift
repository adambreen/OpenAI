//
//  ChatCompletionTool.swift
//  OpenAI
//
//  Created by Oleksii Nezhyborets on 18.04.2025.
//

@_spi(Generated) import OpenAPIRuntime
#if os(Linux)
@preconcurrency import struct Foundation.URL
@preconcurrency import struct Foundation.Data
@preconcurrency import struct Foundation.Date
#else
import struct Foundation.URL
import struct Foundation.Data
import struct Foundation.Date
#endif

public struct ChatCompletionTool: Codable, Hashable, Sendable {
    /// The type of the tool. Currently, only `function` is supported.
    public let type: String
    
    public var function: FunctionObject
    /// Creates a new `ChatCompletionTool`.
    ///
    /// - Parameters:
    ///   - _type: The type of the tool. Currently, only `function` is supported.
    ///   - function:
    public init(
        type: String = "function",
        function: FunctionObject
    ) {
        self.type = type
        self.function = function
    }
    public enum CodingKeys: String, CodingKey {
        case type
        case function
    }
}
