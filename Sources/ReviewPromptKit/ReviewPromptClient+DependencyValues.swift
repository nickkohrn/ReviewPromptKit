import ComposableArchitecture

extension DependencyValues {
    public var reviewPromptClient: ReviewPromptClient {
        get { self[ReviewPromptClient.self] }
        set { self[ReviewPromptClient.self] = newValue }
    }
}
