//
//  ViewController.swift
//  TableView2
//
//  Created by Germán Santos Jaimes on 9/3/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let ImageLista = ["fresa", "manzana" , "platano"]
    
    @IBOutlet weak var tablita: UITableView!
    var alumnos = ["GRANDE","MEDIANA","CHICA"]
    
    var descript = ["Bolsa de 500g. ","180g bolsa","Una hamburguesa clásica con papas y refresco"]
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ImageLista.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        
        cell.imageView?.image = UIImage(named: ImageLista[indexPath.row])
        
        return cell
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceview, completion) in
            
            self.alumnos.remove(at: indexPath.row)
            
            self.tablita.deleteRows(at: [indexPath], with: .fade )
            
            
            completion(true)
            
        }
        
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (action, sourceview, completion) in
            
            
        }
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        
        return swipeConfiguration
        
    }
    
    // Unwind Segues
    @IBAction func unwindSecondView(segue: UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondView"{
            
            let indexPath = tablita.indexPathForSelectedRow
            let destination = segue.destination as! SecondViewController
            
            destination.fromFirstView = alumnos[(indexPath?.row)!]
            destination.fromFirstView2 = descript[(indexPath?.row)!]
            
        }
    }


}




