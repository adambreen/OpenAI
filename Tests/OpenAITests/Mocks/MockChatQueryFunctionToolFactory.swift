//
//  MockChatQueryFunctionToolFactory.swift
//  OpenAI
//
//  Created by Oleksii Nezhyborets on 18.04.2025.
//

import Foundation
import OpenAI

struct MockChatQueryFunctionToolFactory {
    func makeFunctionTool() throws -> ChatQuery.ChatCompletionToolParam {
        .init(
            type: "function",
            function: .init(
                description: "Get the current weather in a given location",
                name: "get_current_weather",
                parameters: .init(
                    additionalProperties: try .init(
                        unvalidatedValue: [
                            "type": "object",
                            "properties": [
                                "location": [
                                    "type": "string",
                                    "description": "The city and state, e.g. San Francisco, CA"
                                ],
                                "unit": ["type": "string", "enum": ["celsius", "fahrenheit"]]
                            ],
                            "required": ["location"]
                        ]
                    )
                ),
                strict: nil
            )
        )
    }
}
