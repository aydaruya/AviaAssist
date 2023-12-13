import UIKit

class AutomatedCFRCheckInViewController: UIViewController {

    @IBOutlet weak var thyIDTextField: UITextField!
    @IBOutlet weak var cfrPasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup if needed
    }

    //Generate Password button
    @IBAction func generatePasswordTapped(_ sender: UIButton) {
        //used gaurd statement here to make sure that the id is not empty
        guard let thyID = thyIDTextField.text, !thyID.isEmpty,
              let cfrPassword = cfrPasswordTextField.text, !cfrPassword.isEmpty else {
            //error message if invalid
            presentAlert(withTitle: "Error", message: "Please enter all required fields")
            return
        }

        //generate the custom phone number using the inputs
        let customPhoneNumber = generateCustomPhoneNumber(thyID: thyID, cfrPassword: cfrPassword)

        //present the result in a pop-up from the bottom
        let alertController = UIAlertController(title: "Custom Phone Number", message: "Call this number: \(customPhoneNumber)", preferredStyle: .actionSheet)

        let callAction = UIAlertAction(title: "Call", style: .default) { _ in
            //Using URL function to initiate the phone call if desired
            if let url = URL(string: "tel://\(customPhoneNumber)"), UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        //add cancel
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        //call the actions
        alertController.addAction(callAction)
        alertController.addAction(cancelAction)
        //present the actions
        present(alertController, animated: true)
    }

    //This is the generation
    func generateCustomPhoneNumber(thyID: String, cfrPassword: String) -> String {
        //for now this is a dummy implementation
        return "1-800-242**1**\(thyID.suffix(3))**2**\(cfrPassword.prefix(3))"
    }

    //helper function to present alerts
    func presentAlert(withTitle title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
