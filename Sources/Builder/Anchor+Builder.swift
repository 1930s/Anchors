import UIKit

/// Act as namespace for all the builders
public final class Builder {}

/// Extend Anchor to return builders
public extension Anchor {

  /// Apply the same anchor to other views
  func apply(to views: [UIView]) -> Builder.Apply {
    return Builder.Apply(anchor: self, views: views)
  }

  /// Build a paging scrollView
  func pagingHorizontally(togetherWith views: [UIView], in scrollView: UIScrollView) -> Builder.Paging {
    var views: [UIView] = views
    views.append(contentsOf: [item as? UIView].flatMap({ $0 }))
    return Builder.Paging(scrollView: scrollView, views: views)
  }

  /// Distribute views horizontally
  func distributeHorizontally(togetherWith views: [UIView], spacing: CGFloat) -> Builder.Distribute {
    var views: [UIView] = views
    views.append(contentsOf: [item as? UIView].flatMap({ $0 }))
    return Builder.Distribute(views: views, spacing: spacing)
  }
}
