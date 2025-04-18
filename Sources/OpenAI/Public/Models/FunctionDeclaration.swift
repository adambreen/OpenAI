//
//  FunctionDeclaration.swift
//  
//
//  Created by Brent Whitman on 2024-01-29.
//

import Foundation

// There was a custom type here, but for now we'll use the generated FunctionObject instead
public typealias FunctionDeclaration = FunctionObject

extension FunctionObject {
    // To backwards-support previous initialization interface. For some reason in generated type description goes before name
    public init(
        name: String,
        description: String? = nil,
        parameters: FunctionParameters? = nil,
        strict: Bool? = nil
    ) {
        self.description = description
        self.name = name
        self.parameters = parameters
        self.strict = strict
    }
}
