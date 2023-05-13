import Foundation

public struct ReviewPromptClient {
    public var requestReview: @MainActor @Sendable () async -> Void
}
