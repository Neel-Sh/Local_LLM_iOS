//
//  LocalLLMError+Equatable.swift
//  LocalChat
//
//  Created by GPT-5 Codex on 9/27/25.
//

import Foundation

extension LocalLLMError: Equatable {
    public static func == (lhs: LocalLLMError, rhs: LocalLLMError) -> Bool {
        switch (lhs, rhs) {
        case (.modelNotFound, .modelNotFound),
             (.outputMissing, .outputMissing),
             (.cancelled, .cancelled),
             (.featureUnavailable, .featureUnavailable),
             (.notAuthorized, .notAuthorized):
            return true
        default:
            return false
        }
    }
}
