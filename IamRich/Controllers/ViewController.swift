//
//  ViewController.swift
//  IamRich
//
//  Created by Jonathan Silva on 10/12/18.
//  Copyright © 2018 PracticesLisbethEslava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //PROPERTIES
    @IBOutlet weak var LabelNombre: UILabel!
    
    @IBOutlet weak var ImageLogo: UIImageView!
    
    @IBOutlet weak var ButtonTouch: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Metodos
    
    @IBAction func ButtonTocuhMe(_ sender: UIButton) {
        /*
        self.ImageLogo.image = UIImage(named: "diamanteLila")
        self.ButtonTouch.setTitle("Mismo boton", for: UIControl.State.normal)
        */
        let controller = UIAlertController(title: "I am Rich", message: """
                                                                        I am Rich,
                                                                        I deserve it,
                                                                        I am good,
                                                                        healty and succesfull
                                                                        """, preferredStyle: .actionSheet) //alert o actionSheet
        
        //let action = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
        let action = UIAlertAction(title: "Aceptar", style: .default) { (accion) in
            print("Boton aceptar")
        }
        controller.addAction(action)
        
        let destruccion = UIAlertAction(title: "Borrar", style: .destructive, handler: {(accion) in
            print("Boton Borrar")
            print("Es un cambio para github")
        })
        controller.addAction(destruccion)
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("Boton Cancelar")
        }
        controller.addAction(cancelar)

        
        self.show(controller, sender: nil)
    }
    
}

