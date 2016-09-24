//
//  TableViewController.swift
//  navigationExample
//
//  Created by Infraestructura on 24/09/16.
//  Copyright © 2016 Infraestructura. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    //? ESTE OBJETO ES OPCIONAL
    //! ES SEGURO QUE EXISTE
    var elArreglo:NSArray?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //INICILIZAR EL ARREGLO
        self.elArreglo = [ ["Juan", "Pedro", "Victor", "Juan"], ["Silvia", "Maribel", "Gabriela", "Beatriz", "Rocio", "Mariel", "Cruz", "Alejandra"] ];
        
        
        //self.navigationController!.title = "AMIGOS"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    override func viewWillAppear(animated: Bool) {
        self.navigationItem.title = "AMIGOS"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        //NUMERO DE SECCIONES DE LA TABLA
        return self.elArreglo!.count //1;
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return self.elArreglo![section].count //self.elArreglo!.count
    }

    
    
    //DECOMENTAR ESTA FUNCION
    //PARA SABER QUE SELDA VA A REUTILIZAR SE DECLARA Y SE INSTANCIA EN EL TABLE VIEW CELLL (LA LINEA DE LA CELDA)
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CeldaReutilizable", forIndexPath: indexPath)
        
        // Configure the cell...
        //cell.textLabel!.text = (self.elArreglo![indexPath.row] as! String)
        cell.textLabel!.text = (self.elArreglo![indexPath.section][indexPath.row] as! String)
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 30.0
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "LORD`s"
        }
        
        return "LADY`s"
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
