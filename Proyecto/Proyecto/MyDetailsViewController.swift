//
//  MyDetailsViewController.swift
//  Proyecto
//
//  Created by Francisco Munoz Rocha on 05/05/23.
//

import UIKit

class DetallesFuncionViewController: UIViewController {
    
    
    public var funcion: Funcion?
    
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var descripcionCelda: UILabel!
    @IBOutlet weak var detalles: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        titulo.text = funcion?.getTitulo()
        descripcionCelda.text = funcion?.getDescripcionCelda()
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as? MyTableViewCell else {
                fatalError("")
            }
            
            let imagen = UIImage(named: funcion?.getImageName() ?? "")
            self.imagen.image = imagen
            
            return cell
        }

        detalles.text = funcion?.getDetalles()
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "boletosSegue" {
            let viewController: BoletosViewController = segue.destination as! BoletosViewController
            viewController.funcion = self.funcion
        }
    }
}

