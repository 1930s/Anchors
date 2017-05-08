import UIKit

/// A simple data structure to group a set of constraints
public class Group {
  public let constraints: [NSLayoutConstraint]
  public var isActive: Bool = false {
    didSet {
      if isActive {
        NSLayoutConstraint.activate(constraints)
      } else {
        NSLayoutConstraint.deactivate(constraints)
      }
    }
  }

  init(constraints: [NSLayoutConstraint]) {
    self.constraints = constraints
  }

  convenience init(anchors: [ConstraintProducer]) {
    var constraints: [NSLayoutConstraint] = []
    anchors.forEach {
      constraints.append(contentsOf: $0.constraints())
    }

    self.init(constraints: constraints)
  }
}
