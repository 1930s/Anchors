import UIKit
import Anchors

class ContentController: UIViewController {
  var content: ListController.Content!
  var contentView: UIView!
  let container = UIView()

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .white
    title = content.title

    view.addSubview(container)
    container.backgroundColor = UIColor(hex: "#bdc3c7")
    activate(
      container.anchor.center.width,
      container.anchor.height.equal.to(container.anchor.width)
    )

    contentView = content.view.init()
    container.addSubview(contentView)
    activate(contentView.anchor.edges)
  }
}
