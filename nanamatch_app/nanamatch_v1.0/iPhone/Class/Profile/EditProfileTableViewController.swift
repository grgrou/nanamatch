//
//  EditProfileTableViewController.swift
//  nanamatch_v1.0
//
//  Created by Ernesto Gaspard on 3/07/18.
//  Copyright © 2018 Ernesto Gaspard. All rights reserved.
//

import UIKit

class EditProfileTableViewController: UITableViewController {

    //Basic information outlets
    @IBOutlet weak var txtFirstName: TextFieldAppearance!
    @IBOutlet weak var txtLastName: TextFieldAppearance!
    @IBOutlet weak var txtAddress: TextFieldAppearance!
    @IBOutlet weak var txtDistrict: TextFieldAppearance!
    
    //Private information outlets
    @IBOutlet weak var txtEmailAddress: TextFieldAppearance!
    @IBOutlet weak var txtPhoneNumber: TextFieldAppearance!
    @IBOutlet weak var txtCellPhoneNumber: TextFieldAppearance!
    
    var objUser : UserBE!
    var objUserUpdated = UserBE()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.txtFirstName.text = self.objUser.first_name
        self.txtLastName.text = self.objUser.last_name
        self.txtAddress.text = self.objUser.address
        self.txtDistrict.text = self.objUser.district
        
        self.txtEmailAddress.text = self.objUser.email
        self.txtPhoneNumber.text = self.objUser.phone
        self.txtCellPhoneNumber.text = self.objUser.cell_phone
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveProfileInfo(_ sender: UIBarButtonItem) {
        self.objUserUpdated.first_name = self.txtFirstName.text ?? ""
        self.objUserUpdated.last_name = self.txtLastName.text ?? ""
        self.objUserUpdated.address = self.txtAddress.text ?? ""
        self.objUserUpdated.district = self.txtDistrict.text ?? ""
        self.objUserUpdated.email = self.txtEmailAddress.text ?? ""
        self.objUserUpdated.phone = self.txtPhoneNumber.text ?? ""
        self.objUserUpdated.cell_phone = self.txtCellPhoneNumber.text ?? ""
        print(self.objUserUpdated.first_name)
        
        UserBL.updateUser(self.objUserUpdated) { (status) in
            if status == 0 {
                print(status, "update correcto")
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    /*override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }*/

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
