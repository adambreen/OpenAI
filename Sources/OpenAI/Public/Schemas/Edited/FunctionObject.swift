//
//  FunctionObject.swift
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

public struct FunctionObject: Codable, Hashable, Sendable {
    /// A description of what the function does, used by the model to choose when and how to call the function.
    public let description: String?
    /// The name of the function to be called. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64.
    public let name: String
    /// The parameters the functions accepts, described as a JSON Schema object. See the guide for examples, and the JSON Schema reference for documentation about the format.
    /// Guide: https://platform.openai.com/docs/guides/function-calling
    /// JSON Schema reference: https://json-schema.org/understanding-json-schema/
    ///
    /// Omitting parameters defines a function with an empty parameter list.
    public let parameters: FunctionParameters?
    /// Whether to enable strict schema adherence when generating the function call. If set to true, the model will follow the exact schema defined in the `parameters` field. Only a subset of JSON Schema is supported when `strict` is `true`. Learn more about Structured Outputs in the [function calling guide](docs/guides/function-calling).
    public let strict: Bool?
    /// Creates a new `FunctionObject`.
    ///
    /// - Parameters:
    ///   - description: A description of what the function does, used by the model to choose when and how to call the function.
    ///   - name: The name of the function to be called. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64.
    ///   - parameters:
    ///   - strict: Whether to enable strict schema adherence when generating the function call. If set to true, the model will follow the exact schema defined in the `parameters` field. Only a subset of JSON Schema is supported when `strict` is `true`. Learn more about Structured Outputs in the [function calling guide](docs/guides/function-calling).
    public init(
        description: String? = nil,
        name: String,
        parameters: FunctionParameters? = nil,
        strict: Bool? = nil
    ) {
        self.description = description
        self.name = name
        self.parameters = parameters
        self.strict = strict
    }
    public enum CodingKeys: String, CodingKey {
        case description
        case name
        case parameters
        case strict
    }
}
