//
//  FunctionParameters.swift
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

/// The parameters the functions accepts, described as a JSON Schema object. See the [guide](https://platform.openai.com/docs/guides/function-calling) for examples, and the [JSON Schema reference](https://json-schema.org/understanding-json-schema/) for documentation about the format.
///
/// Omitting `parameters` defines a function with an empty parameter list.
public struct FunctionParameters: Codable, Hashable, Sendable {
    /// A container of undocumented properties.
    public let additionalProperties: OpenAPIRuntime.OpenAPIObjectContainer
    /// Creates a new `FunctionParameters`.
    ///
    /// - Parameters:
    ///   - additionalProperties: A container of undocumented properties.
    public init(additionalProperties: OpenAPIRuntime.OpenAPIObjectContainer = .init()) {
        self.additionalProperties = additionalProperties
    }
    public init(from decoder: any Decoder) throws {
        additionalProperties = try decoder.decodeAdditionalProperties(knownKeys: [])
    }
    public func encode(to encoder: any Encoder) throws {
        try encoder.encodeAdditionalProperties(additionalProperties)
    }
}
