//
//  ContactoDetalleTableViewController.swift
//  ContactosAplicacion
//
//  Created by DamII on 2/10/23.
//

import UIKit

class ContactoDetalleTableViewController: UITableViewController {

    
    var contacto: Contact?
    
    
    @IBOutlet weak var telefonotxt: UILabel!
    
    @IBOutlet weak var correotxt: UILabel!
    
    @IBOutlet weak var direcciontxt: UILabel!
    
    @IBOutlet weak var ciudadtxt: UILabel!
    
    @IBOutlet weak var estadotxt: UILabel!
    
    @IBOutlet weak var codigopostaltxt: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nombretxtTitulo: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        verContacto()
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    func verContacto(){
        guard let contactvar = contacto else {
            return
        }
        
        telefonotxt.text = contactvar.phone
        correotxt.text = contactvar.email
        direcciontxt.text = contactvar.street
        ciudadtxt.text = contactvar.city
        estadotxt.text = contactvar.state
        codigopostaltxt.text = contactvar.zip
        imageView.image = contactvar.image
        nombretxtTitulo.text = contactvar.firstName
    }
    

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
