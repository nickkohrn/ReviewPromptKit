import ComposableArchitecture
import Foundation
import StoreKit
import UIKit

extension ReviewPromptClient: DependencyKey {
    public static let liveValue: ReviewPromptClient = {
        return ReviewPromptClient(
            requestReview: {
                let scenes = UIApplication.shared.connectedScenes
                guard let activeScene = scenes.first(where: {
                    $0.activationState == .foregroundActive
                }) as? UIWindowScene else {
                    return
                }
                SKStoreReviewController.requestReview(in: activeScene)
            }
        )
    }()
}
