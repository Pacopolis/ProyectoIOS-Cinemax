//
//  MyTableViewCell.swift
//  Proyecto
//
//  Created by Francisco Munoz Rocha on 04/05/23.
//

import UIKit

class BoletosTicketViewController: UIViewController {
    
    public var transaccion: VentaBoletos?
    @IBOutlet weak var descripcion: UILabel!
    
    @IBAction func cerrar(_ sender: Any) {
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descripcion.text = transaccion?.description
        
    }
}
