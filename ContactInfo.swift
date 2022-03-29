
import UIKit

class ContactInfo: UIViewController {
    
    var peopleInfo = PeopleInfo()
    var indexRow: Int?
    var phNumber: String?
    var perName: String?
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var NumberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = perName
        NumberLabel.text = phNumber
    }
    
  

}
