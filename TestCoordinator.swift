import UIKit

class Coordinator {
	private let navigationController: UINavigationController
	private let viewModel: ViewModel

	init(navigationController: UINavigationController, viewModel: ViewModel) {
		self.navigationController = navigationController
		self.viewModel = viewModel
	}

	func start() {
		let viewController = ViewController(viewModel: viewModel)
		viewController.delegate = self
		navigationController.pushViewController(viewController, animated: true)
	}
}

extension Coordinator: ViewControllerDelegate {
	func didTapButton() {
		let viewModel = ViewModel()
		let viewController = ViewController(viewModel: viewModel)
		viewController.delegate = self
		navigationController.pushViewController(viewController, animated: true)
	}
}

