import UIKit

class ViewController: UIViewController {
@IBOutlet var tableView: UITableView!
    
    let names = [
        "John Smih",
        "Dan Smith",
        "Jason Smith",
        "Mary Smith"
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let firstCell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        
        firstCell.textLabel?.text = names[indexPath.row]
        return firstCell
    }
}

