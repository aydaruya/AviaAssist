import UIKit

class AutomatedCFRCheckInViewController: UIViewController {

    // Connect these via the storyboard
    @IBOutlet weak var thyIDTextField: UITextField!
    @IBOutlet weak var cfrPasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup if needed
    }

    // This action is connected to the "Generate Password" button
    @IBAction func generatePasswordTapped(_ sender: UIButton) {
        // Ensure the inputs are valid (non-empty, etc.)
        guard let thyID = thyIDTextField.text, !thyID.isEmpty,
              let cfrPassword = cfrPasswordTextField.text, !cfrPassword.isEmpty else {
            // Show error message if inputs are invalid
            presentAlert(withTitle: "Error", message: "Please enter all required fields")
            return
        }

        // Generate the custom phone number using the inputs
        let customPhoneNumber = generateCustomPhoneNumber(thyID: thyID, cfrPassword: cfrPassword)

        // Present the result in a pop-up from the bottom
        let alertController = UIAlertController(title: "Custom Phone Number", message: "Call this number: \(customPhoneNumber)", preferredStyle: .actionSheet)

        let callAction = UIAlertAction(title: "Call", style: .default) { _ in
            // Here you can initiate the phone call if desired
            if let url = URL(string: "tel://\(customPhoneNumber)"), UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)

        alertController.addAction(callAction)
        alertController.addAction(cancelAction)

        present(alertController, animated: true)
    }

    // This is a placeholder for your custom phone number generation logic
    func generateCustomPhoneNumber(thyID: String, cfrPassword: String) -> String {
        // Implement your custom phone number generation logic here
        // This is a dummy implementation
        return "1-800-**1\(thyID.suffix(3))**2\(cfrPassword.prefix(3))"
    }

    // Helper function to present alerts
    func presentAlert(withTitle title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
