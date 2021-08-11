//
//  ShowUserDetailViewController.swift
//  CCWorkTest
//
//  Created by mac on 2021/8/11.
//

import UIKit



class ShowUserDetailViewController: UIViewController {

    @IBOutlet weak var IDLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    
    var apiAddressOne = "http://demo.kidtech.com.tw/files/appexam/appexam1.htm"
    var urlSession = URLSession(configuration: .default)
        
    override func viewDidLoad() {
        super.viewDidLoad()

        downloadInfo(webAddress: apiAddressOne)
        // Do any additional setup after loading the view.
    }
    
    func downloadInfo(webAddress: String) {
        if let url = URL(string: webAddress) {
            let task = urlSession.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    print("\(error.localizedDescription)")
                    return
                }
                if let loadedData = data {
                    do {
                        let okData = try JSONDecoder().decode(AllData.self, from: loadedData)
                        let id = okData.ID
                        let name = okData.Name
                        let attack = okData.Attack
                        let def = okData.Defense
                        let aUser = User(id: id, name: name, attack: attack, defense: def)
                        DispatchQueue.main.async {
                            self.settingInfo(user: aUser)
                        }
                        
                    } catch {
                        print("\(error.localizedDescription)")
                    }
                }
            }
            task.resume()
        }
    }
    
    func settingInfo(user: User) {
        IDLabel.text = user.id
        nameLabel.text = user.name
        attackLabel.text = "\(String(describing: user.attack))"
        defenseLabel.text = "\(String(describing: user.defense))"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
